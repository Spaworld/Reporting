class OrderDetailsController < ApplicationController
  def index
    @top_sellers = OrderDetail.all.limit(10)
  end
end
