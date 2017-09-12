class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  protected

  def require_report_admin
    redirect_to :root unless current_user.report_admin?
  end

end
