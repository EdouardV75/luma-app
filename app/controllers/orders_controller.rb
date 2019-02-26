class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :delete]
  def index
    @myorders = policy_scope(Order).where(user: current_user)
    @orders_as_owner = current_user.orders_as_owner
  end

  def new
    @experience = Experience.find(params[:id])
    @order = Order.new
    authorize @order
  end

  def create
    @order = Order.new(order_params)
    authorize @order
    @experience = Experience.find(params[:experience_id])
    @order.experience = @experience
    @order.user = current_user
    if @order.save
      redirect_to dashboard_path
    else
      render "orders/show"
    end
  end

   # def edit
  #   @order = Order.find(params[:order_id])
  #   authorize @order
  # end

  # def destroy
  #   @order = Order.find(params[:id])
  #   @order.destroy
  #   authorize @order
  #   redirect_to root_path
  # end

  private

  def order_params
    params.require(:order).permit(:status, :order_id, :experience_id)
  end
end
