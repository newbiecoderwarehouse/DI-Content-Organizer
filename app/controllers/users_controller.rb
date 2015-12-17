class UsersController < ApplicationController
  before_action :, only: [:index, :update, :edit]
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = "Successfully updated User."
      redirect_to users_path
    else
      render :action => 'edit'
    end
  end

  def user_params
    params.require(:user).permit(:uploader)
  end
end
