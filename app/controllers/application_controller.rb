class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  def default_url_options
  { host: ENV["HOST"] || "localhost:3000" }
end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:accept_invitation, keys: %i(email first_name last_name company_id password password_confirmation invitation_token))
    devise_parameter_sanitizer.permit(:invite, keys: %i(email first_name last_name company_id password password_confirmation invitation_token))
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(email first_name last_name company_id password password_confirmation office_manager invitation_token))
  end

  def after_accept_path_for(resource)
    new_post_path
  end

  def after_invite_path_for(resource)
    dashboard_path
  end
end
