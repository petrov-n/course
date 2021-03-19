class OrdersController < ApplicationController

before_action :authenticate_user!

before_action :set_order, only: [ :show, :edit, :update, :destroy ]

  def index
  	@orders = Order.all
  end

 def show
   end

  def new
  	@order = Order.new
  end

  def create
  	@order = Order.new(order_params)
  	if @order.save
       redirect_to @order, success: 'Post created'
     else
       render :new, danger: 'Post not created'
     end
  end

  def edit
  end

  def update
  	if @order.update_attributes(order_params)
      redirect_to @order, info: 'Order updated'
    else
      render :edit, danger: 'Order not updated'
    end
  end 

  def destroy
		@order.destroy
		redirect_to orders_path, success: 'Order destroyed'
  	end

private
def order_params
    params.require(:order).permit(:order_id, :user, :place, :cost, :data_from, :data_to, :status)
	end

def set_order
		@order = Order.find(params[:id])
	end

end