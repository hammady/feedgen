class ChannelsController < ApplicationController
  def index
    @channels = Channel.all
  end

  def show
    @ch = Channel.find params[:id]
  end
end
