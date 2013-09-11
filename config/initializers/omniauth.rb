Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end

OmniAuth.config.on_failure = UsersController.action(:oauth_failure)