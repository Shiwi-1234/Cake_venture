class UsersController < ApplicationController

	def index
		@users = User.all
		render json: @users
	end
  
	def create
		byebug
		@user = User.new(user_params)
		if @user.save
			UserMailer.welcome_email(@user).deliver_now
			render json: UserSerializer.new(@user).serializable_hash
		else
			render json: {error: "Something went wrong"}
		end
	end

	def order 
		order_id = params[:user_id].to_i
		order = Order.create(user_id: order_id)
		@order_items = order.order_items.create(menu_item_id: params[:menu_item_id], sub_category_id: params[:sub_category_id])
		render json: @order_items
	end

	private
		def user_params 
			params.permit(:name , :user_email, :password ,:phone_number , :address , :pin_code , :image)
		end
end
