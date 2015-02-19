class PurchaseMailer <ActionMailer::Base
	layout 'purchase_mailer'
	default from: "Samuel Clark <sam@sbappawards.com>"

	def purchase_receipt purchase 
		@purchase = purchase
		mail to: purchase.email, subject: "Your app has been nominated!"
	end
end