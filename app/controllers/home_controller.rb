class HomeController < ApplicationController
  def index
    @freelancers = fetch_freelancers
    @pagy, @freelancers = pagy(@freelancers, items: 10)
  end

  def filter
    freelancers = Profile.filter_rate(params[:min_value], params[:max_value]).order('feature DESC')
    pagy, freelancer_list = pagy(freelancers, items: 10)
    render partial: 'devise/shared/show', locals: {freelancers: freelancer_list, pagy: pagy }
  end

  private

  def fetch_freelancers
    Rails.cache.fetch("no-filter", expires_in: 24.hours) do
      Profile.freelancer_user.order('feature DESC')
    end
  end
end