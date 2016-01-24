require 'spec_helper'

describe VideosController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  video = FactoryGirl.create :video
  describe "GET 'show'" do
    it "returns http success" do
      get 'show', id: video.id
      response.should be_success
    end
  end

end
