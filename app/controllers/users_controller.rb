class UsersController < ApplicationController

	def index
		@users = User.all
		render json: @users
	end
  
	def create
		@user = User.new(user_params)
		if @user.save
			render json: UserSerializer.new(@user).serializable_hash
		else
			render json: {error: "Something went wrong"}
		end
	end

	def order 
		order = Order.create(user_id: params[:user_id])
		order_items = Order.order_items.create(menu_item_id: params[:menu_item_id], sub_category_id: params[:sub_category_id])
	end

	



	private
		def user_params 
			params.permit(:name , :email, :password ,:phone_number , :address , :pin_code , :image)
		end
		
		
end
