Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV["GITHUB_CLIENT_ID"], ENV["GITHUB_CLIENT_SECRET"], scope: "read:user"
end

OmniAuth.config.allowed_request_methods = [:post, :get] if Rails.env.development?
