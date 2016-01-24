class DashboardController < ApplicationController
  def home
    @videos = Video.all
  end
end
