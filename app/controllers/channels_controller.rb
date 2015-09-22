class ChannelsController < ApplicationController
  before_action :set_channels

  def index
    @channels = Channel.where(C005_CUSTOMER_ID: @selected_channels).order(:name)
  end

  private

  def set_channels
    @selected_channels = [275,390,40006,40007,362,40403,394,340,40015,40108,273,25,353,338]
    # @id_coumn = ENV['CHANNELS_PRIMARY_KEY']
  end
end
