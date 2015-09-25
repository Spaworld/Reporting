class ChannelsController < ApplicationController

  before_filter :set_variables

  def index
    @orders = Order.by_date(Time.now - 1.day)#.where('channel = ?', Channel.where(id: @selected_channels))
    @channels = Channel.where(id: @selected_channels)
  end

  private

  def set_variables
    @selected_channels = 296,155,275,390,40006,40007,362,40403,394,340,40015,40108,273,25,353,338
  end

end
