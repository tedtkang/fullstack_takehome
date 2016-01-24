class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
    @users = @video.users.paginate(:page => params[:page], :per_page => 25)
  end
end
