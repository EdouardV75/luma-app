class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :delete]
  def index
    @myorders = policy_scope(Order).where(user: current_user)
    @orders_as_owner = current_user.orders_as_owner
  end

  def new
    @experience = Experience.find(params[:experience_id])
    @order = Order.new
    authorize @order
  end

  def create
    @experience = Experience.find(params[:experience_id])
    @order = Order.create!(experience: @experience, amount: @experience.price, state: 'pending', user: current_user)
    authorize @order
    redirect_to new_order_payment_path(@order)
  end

  def dashboard
    @user = current_user
    authorize @user
    @orders = current_user.company.orders
    @user_to_create = User.new
    @order = Order.new
    @employees = User.where(company: @user.company)
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
    authorize @order
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
    params.require(:order).permit(:amount, :state, :user_id)
  end
end
