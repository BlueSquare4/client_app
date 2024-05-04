class UsersController < ApplicationController
  bbefore_action :authenticate_user!
  before_action :check_role, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  private

  def check_role
    redirect_to(root_path, alert: "You are not authorized to perform this action.") unless current_user.receptionist?
  end
end
