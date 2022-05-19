class ProfileController < ApplicationController
  before_action :require_login

  def show
    @profile = Profile.find_by(user_id: params[:id])
  end

  def edit
    @profile = current_user.profile
  end

  def update
    if current_user.profile.update(user_params)
      redirect_to profile_show_path(current_user.id)
    else
      redirect_to profile_edit_path
    end
  end

  private

  def user_params
    params.require(:profile).permit(:first_name, :last_name, :user_type, :experience,
                                 :hourly_rate, :skills, :feature, :description)
  end
end
