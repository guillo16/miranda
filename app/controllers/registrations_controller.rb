class RegistrationsController < Devise::RegistrationsController

  def new
    super
  end

  def create
    super
  end

  protected

  def after_sign_up_path_for(resource)
    subscriptions_new_path # Or :prefix_to_your_route
  end
end
