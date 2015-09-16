class StaticsController < ApplicationController
  def home
    @latest_posts = Post.order("created_at DESC").limit(5)
  end

end
