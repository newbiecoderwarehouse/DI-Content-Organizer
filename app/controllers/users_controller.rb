class UsersController < ApplicationController
  before_action :set_user, only: [:update, :edit]
  def index
    @users = User.all
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:notice] = "Successfully updated User."
      redirect_to users_path
    else
      render :action => 'edit'
    end
  end
  
  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
    params.require(:user).permit(:approved)
    end

end
