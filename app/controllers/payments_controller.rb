class PaymentsController < ApplicationController
  before_action :set_experience

  def new
    skip_authorization
  end

  def create
    skip_authorization
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail],
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,
      amount:       @experience.price_cents,
      description:  "Payment for experience #{@experience.name} for order #{@experience.id}",
      currency:     'eur',
      
    )
    redirect_to confirmed_path
  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to order_path(@order)
  end

  private

  def set_experience
    @experience = Experience.find(params[:experience_id])
  end
end
