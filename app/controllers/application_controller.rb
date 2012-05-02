class ApplicationController < ActionController::Base
  protect_from_forgery

  def admin_only
    redirect_to(root_path, :notice => "You're not allowed here!") unless current_user.admin?
  end
end
