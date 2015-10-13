class OrdersController < ApplicationController
  def index
    @channels = Channel.all
  end
end
