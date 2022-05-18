class HomeController < ApplicationController

  def index
    @freelancers = Profile.freelancer_user.order("feature DESC")
    @pagy, @freelancer = pagy(@freelancers, items: 1)
  end

  def filter
    start_amount, end_amount = params[:start], params[:end]
    @freelancer = Profile.filter_rate(start_amount, end_amount)
  end
end
