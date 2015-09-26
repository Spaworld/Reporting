class ChannelsController < ApplicationController
  before_action :set_variables

  def index
    @orders = Order.all.by_date(Time.now)
    @date_range = Time.now.to_date
  end

  def pick_dates
    @start_date = params[:date][:start_date]
    @end_date = params[:date][:end_date]
    @date_range = @start_date...@end_date
    if @start_date.nil? || @end_date.nil?
      flash[:warning] = 'Please select both, starting and ending dates / points'
    elsif @start_date == @end_date
      flash[:warning] = 'Use a single date selector'
    else
      @orders = Order.by_date_range(@start_date, @end_date)
    end
    render :index
  end

  def single_day
    @date = params[:date][:requested_date]
    if @date.nil?
      flash[:warning] = 'Give me a date'
    else
      @orders = Order.by_date(@date)
    end
  end

  private

  def set_variables
    @channels = Channel.all
  end

end
