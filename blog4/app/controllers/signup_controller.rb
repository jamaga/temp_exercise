class SignupController < ApplicationController
  def show
    redirect_to new_user_registration_path
  end

  def save
    if params[:sign_up].nil?
      @error = 'ZLE'
      render :show
    end
    redirect_to signup_success_path
  end

  def success
  end
end
