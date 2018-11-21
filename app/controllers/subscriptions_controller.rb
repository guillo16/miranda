class SubscriptionsController < ApplicationController
  require "stripe"
  skip_after_action :verify_authorized

  def new
    plans
  end

  def create
    subscription = Stripe::Plan.create(
      :amount => (params[:amount].to_i)*100,
      :interval => params[:interval],
      :name => params[:name],
      :currency => 'usd',
      :trial_plan => null,
      :id => SecureRandom.uuid # This ensures that the plan is unique in stripe
    )
    #Save the response to your DB
    flash[:notice] = "Plan successfully created"
    redirect_to '/subscription'
    authorize subscription
  end

  def plans
    @stripe_list = Stripe::Plan.all
    @plans = @stripe_list[:data]
  end

  def stripe_checkout
    @amount = 10
    #This will create a charge with stripe for $10
    #Save this charge in your DB for future reference
    charge = Stripe::Charge.create(
                    :amount => @amount * 100,
                    :currency => "usd",
                    :source => params[:stripeToken],
                    :description => "Test Charge"
    )
    flash[:notice] = "Your free trial is now active.  Your first charge will be in 7 days."
    current_user.update(subscribed: true)
    if current_user.save
    redirect_to root_path
  end
  end

  def subscription_checkout
    plan_id = params[:plan_id]
    plan = Stripe::Plan.retrieve(plan_id)
    #This should be created on signup.
    customer = Stripe::Customer.create(
            :description => "Customer for #{current_user.email}",
            :source => params[:stripeToken],
            :email => current_user.email
          )
    # Save this in your DB and associate with the user;s email
    stripe_subscription = customer.subscriptions.create(:plan => plan.id)

    flash[:notice] = "Your free trial is now active.  Your first charge will be in 7 days."
    current_user.update(subscribed: true)
    if current_user.save
      redirect_to root_path
    end
  end

  def webhook
  begin
    event_json = JSON.parse(request.body.read)
    event_object = event_json['data']['object']
    #refer event types here https://stripe.com/docs/api#event_types
    case event_json['type']
      when 'invoice.payment_succeeded'
        handle_success_invoice event_object
      when 'invoice.payment_failed'
        handle_failure_invoice event_object
      when 'charge.failed'
        handle_failure_charge event_object
      when 'customer.subscription.deleted'
      when 'customer.subscription.updated'
    end
  rescue Exception => ex
    render :json => {:status => 422, :error => "Webhook call failed"}
    return
  end
  render :json => {:status => 200}
end
end
