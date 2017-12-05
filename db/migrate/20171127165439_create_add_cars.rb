class CreateAddCars < ActiveRecord::Migration[5.0]
  def change
    create_table :add_cars do |t|
    	t.string :car_name
    	

      t.timestamps
    end
  end
end
