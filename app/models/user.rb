class User < ActiveRecord::Base
  has_many :users_videos
  has_many :videos, through: :users_videos
  # How does a user relate to a video?
  # You should be able to run the following:
  #    User.last.videos
end
