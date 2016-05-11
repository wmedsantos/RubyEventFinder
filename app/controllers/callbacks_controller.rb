class CallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    logger.debug "Google Authentication"
    @usuario = Usuario.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @usuario
  end
end