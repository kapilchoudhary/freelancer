class ApplicationController < ActionController::Base
  include Pagy::Backend

  def require_login
    redirect_to new_user_session_path unless user_signed_in?
  end    
end
