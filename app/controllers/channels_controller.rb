class ChannelsController < ApplicationController

  before_filter :set_variables

  def index
    @orders = Order.by_date(Time.now - 1.day)#.where('channel = ?', Channel.where(id: @selected_channels))
    @channels = Channel.where(id: @selected_channels)
  end

  private

  def set_variables
    @selected_channels = not_today
  end

end
