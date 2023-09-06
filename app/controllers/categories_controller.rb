class CategoriesController < ApplicationController

  def create
		@category = Category.new(category_params)
		if @category.save
			render json: @category, status: :created 
		else
			render json: {error: "Please fill all details"}
		end	
	end

	def items 
		@items = SubCategory.new(items_params)
		if @items.save
			render json: @items, status: :created 
		else
			render json: {error: "Please fill all details"}
		end	
	end

	private
		def category_params
			params.permit(:name , :menu_item_id)
		end

		def items_params 
			params.permit(:name , :price , :category_id , :description)
		end
end
