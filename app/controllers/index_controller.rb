class IndexController < ApplicationController

	def index
		@listings = Rwd.all

		
	end
end
