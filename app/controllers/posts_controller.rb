class PostsController < ApplicationController
  def create
    @post = Post.create(user: current_user, body: post_params[:body])
    @post.broadcast_prepend_to("posts") if @post.persisted?
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
