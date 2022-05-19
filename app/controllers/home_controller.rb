class HomeController < ApplicationController
  def index
    @freelancers = Profile.latest_frelancer.order('feature DESC')
    @pagy, @freelancers = pagy(@freelancers, items: 10)
  end

  def filter
    freelancers = Profile.filter_rate(params[:min_value], params[:max_value]).order('feature DESC')
    pagy, freelancer_list = pagy(freelancers, items: 10)
    render partial: 'devise/shared/show', locals: {freelancers: freelancer_list, pagy: pagy}
  end
end
