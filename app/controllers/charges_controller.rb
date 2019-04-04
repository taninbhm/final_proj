# frozen_string_literal: true

class ChargesController < ApplicationController
  include ApplicationHelper

  def new
    @amount = total_price * 100
    @description = 'This is a different description'
  end

  def create
    # Amount in cents
    @amount = (total_price * 100).to_i

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'cad'
    )
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
