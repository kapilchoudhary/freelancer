class ProfileController < ApplicationController

  before_action :require_login

  def show
    @profile = user_find(params[:id])
  end

  def edit
    @profile = user_find(params[:id])
  end

  def update
    @user = user_find(params[:id])
    @user.profile.update(user_params)
    if @user.save
      redirect_to root_path
    else
      redirect_to profile_edit_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_type, :experience, :hourly_rate, :skills, :feature)
  end

  def user_find(id)
    User.find(current_user.id)
  end
end
