class PostsController < ApplicationController
  def create
    Post.create(user: current_user, body: post_params[:body])
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
