class FacebookVerificationProvider < Facebook::Messenger::Configuration::Providers::Base
  def valid_verify_token?(token)
    ENV['FACEBOOK_VERIFICATION_TOKEN'] == token
  end

  def app_secret_for(page_id)
    ENV['FACEBOOK_APP_SECRET']
  end

  def access_token_for(page_id)
    ENV['FACEBOOK_ACCESS_TOKEN']
  end
end