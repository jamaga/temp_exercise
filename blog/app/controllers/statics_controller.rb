class StaticsController < ApplicationController
  def home
    session[:views] = session[:views].to_i + 1
    @latest_posts = Post.ordered('ASC').latest_published
  end

  def set_cookie
    #cookies['cookie_terms'] = { :value => 1, :expires => 1.year.from_now }
    cookies.permanent['cookie_terms'] = 1

    redirect_to :back

  end

end
