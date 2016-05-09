class RegistrationsController < Devise::RegistrationsController
  protected
  def after_sign_in_path_for(resource)
    account_dashboard_path
  end
end