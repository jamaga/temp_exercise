class LogInController < ApplicationController
  def show
    redirect_to user_session_path
  end

  def success
   redirect_to user_session_path
  end
end
