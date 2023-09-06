class BakeriesController < ApplicationController

	def index 
		@bakeries = Bakery.all
		render json: @bakeries, status: :ok
	end

	def create
		@bakery = Bakery.new(bakery_params)
		if @bakery.save
			render json: @bakery, status: :created 
		else
			render json: { error: 'Something went wrong' }
		end
	end	


	private

		def bakery_params 
			params.require(:bakery).permit(:name, :location)
		end
end
