class Admin::UsersController < ApplicationController
  before_action :require_report_admin
  before_action :set_user, only: [:destroy]

  # GET /admin/users
  def index
    @users = User.all
  end

  # DELETE /admin/users/1
  def destroy
    @user.destroy
    redirect_to admin_users_url, notice: 'User was successfully deleted.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
end
