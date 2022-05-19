class HomeController < ApplicationController
  def index
    @freelancers = Profile.freelancer_user.order('feature DESC')
    @pagy, @freelancer = pagy(@freelancers, items: 1)
  end

  def filter
    @freelancer = Profile.filter_rate(params[:start], params[:end])
  end
end
