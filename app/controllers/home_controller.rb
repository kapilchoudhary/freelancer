class HomeController < ApplicationController
  def index
    @freelancers = Profile.freelancer_user.order('feature DESC')
    @pagy, @freelancers = pagy(@freelancers, items: 1)
  end

  def filter
    freelancer = Profile.filter_rate(params[:min_value], params[:max_value])
    pagy, freelancer = pagy(freelancer, items: 1)
    render partial: 'devise/shared/show', locals: {freelancers: freelancer, pagy: pagy}
  end
end
