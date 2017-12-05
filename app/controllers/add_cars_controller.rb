class AddCarsController < ApplicationController

	def index
		@listings = Rwd.all
		@add = AddCar.all
	end

	def create
		@add = AddCar.create(add_car_params)
		redirect_to add_cars_path
	end

	def new
		@add = AddCar.new
	end


	
	private

	def add_car_params
		params.require(:add_car).permit(:car_name)
	end


	


end
