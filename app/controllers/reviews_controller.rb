class ReviewsController < ApplicationController
  def index
    @reviews = Order.last(10).map(&:products).flatten.shuffle[0..4]
  end
end
