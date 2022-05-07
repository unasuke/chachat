class SessionsController < ApplicationController
  def create
    user = User.find_or_create_by(uid: auth_hash[:uid]) do |user|
      user.nickname = auth_hash[:info][:nickname]
      user.image_url = auth_hash[:info][:image]
    end
    log_in user
    redirect_to root_path
  end

  def destroy
    log_out
    redirect_to root_path
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end
end
