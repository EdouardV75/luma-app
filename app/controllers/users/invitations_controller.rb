class Users::InvitationsController < Devise::InvitationsController
  private

  def after_accept_path_for(resource)
    new_post_path
  end
end
