class TimelineController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.eager_load(:user).all.order(created_at: :desc)
  end
end
