namespace :data do
  desc "TODO"
  task scrape: :environment do
  	response = HTTParty.get('https://raleigh.craigslist.org/search/ctd?search_distance=10&postal=27613&auto_drivetrain=2&auto_transmission=1')

  	doc = Nokogiri::HTML(response.body)

  	elements = doc.css('.result-title')
  	

  	elements.each do |element|
  		posting = element.children.first.content

  		q = Rwd.where(
  				car: posting
  				).first

  		if q.blank?
  			q = Rwd.create(
  				car: posting
  			)
  		end

  	puts q.inspect
  end
end
end
