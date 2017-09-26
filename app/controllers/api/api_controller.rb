class API::APIController < ActionController::Base
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user!
  before_action :doorkeeper_authorize!
  respond_to :json
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def doorkeeper_unauthorized_render_options(error:)
    {:json => {:error => "Not authorized"}}
  end

  def not_found
    respond_with '{"error": "not_found"}', status: :not_found
  end

  private

  # Find the user that owns the access token
  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

end
