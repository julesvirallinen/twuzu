class UsersController < ApplicationController
  def index
    unless current_user&.admin
      redirect_to root_path, alert: 'Not permitted'
    end
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
