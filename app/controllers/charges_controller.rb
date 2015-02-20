class ChargesController < ApplicationController
	def new
	end
	def create
	  # Amount in cents
	  @amount = 15000

	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => 'Silicon Beach App Awards Nomination',
	    :currency    => 'usd'
	  )

	 purchase = Purchase.create(email: params[:stripeEmail],
	 							 card: params[:stripeToken],
	 							 amount: @amount,
	 							 description: charge.description,
	 							 currency: charge.currency,
	 							 customer_id: customer.id,
	 							 product_id: 1, uuid: SecureRandom.uuid)
	 
	 redirect_to purchase

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to charges_path
	end
end