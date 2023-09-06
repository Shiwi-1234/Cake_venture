class MenuItemsController < ApplicationController
	def create
		id = params[:bakery_id].to_i
		@menu_item = MenuItem.new(bakery_id: id)
		if @menu_item.save
			render json: @menu_item
		end
	end	
end
