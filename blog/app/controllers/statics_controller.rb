class StaticsController < ApplicationController
  def home
    @latest_posts = Post.ordered('ASC').latest_published
  end

end
