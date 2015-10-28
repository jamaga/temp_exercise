class UsersController < ApplicationController
  def home
    session[:views] = session[:views].to_i + 1
  end

  def set_cookie
    cookies.permanent['cookie_terms'] = 1

    redirect_to :back
  end
end
