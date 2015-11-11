class LogOutController < ApplicationController
  def show
  end

  def success
    redirect_to root_path
  end
end
