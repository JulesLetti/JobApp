class HomeController < ApplicationController
  def index
    @job_listings = JobListing.order(:created_at)
  end
end
