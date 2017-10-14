class API::V1::UsersController < API::APIController
  swagger_controller :users, 'User'

  swagger_api :profile do
    summary "Fetches user's own profile information"
    response :ok, 'Success', :User
    response :unauthorized
  end

  # GET /profile
  def profile
    render json:  current_resource_owner
  end

  swagger_api :update do
    summary "Updates user's own profile information "
    param :form, 'user[email]', :string, :optional, 'Email'
    param :form, 'user[first_name]', :string, :optional, 'First Name'
    param :form, 'user[last_name]', :string, :optional, 'Last Name'
    param :form, 'user[city]', :string, :optional, 'City'
    param :form, 'user[region]', :string, :optional, 'Region'
    param :form, 'user[country]', :string, :optional, 'Country'
    response :unauthorized
    response :not_acceptable
  end

  def update
    if  current_resource_owner.update(user_params)
      render json:  current_resource_owner
    else
      render json:  current_resource_owner.errors, status: :unprocessable_entity
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :city, :region, :country)
  end
end
