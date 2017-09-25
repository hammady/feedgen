class FeedChannelsController < ApplicationController
  def index
    @channels = FeedChannel.all
  end

  def show
    @ch = FeedChannel.find params[:id]
  end
end
