class ChannelsController < ApplicationController

  before_action :set_variables

  def index
    @orders = Order.all.by_date(Time.now)
    @date_range = Time.now.to_date
  end

  def pick_dates
    @single_date = params[:single_date]
    @start_date = (params[:date][:start_date]).to_date
    @end_date = (params[:date][:end_date]).to_date

    if !@single_date.blank?
      p 'Fell into checkbox not blank?'
      if !@start_date.blank?
        p 'Fell into start_date not blank'
        @orders = Order.by_date(@start_date)
        flash[:success] = "Displaying order for #{@start_date}"
      else
        p 'Fell into @start_date is blank while @checkbox is checked'
        flash[:error] = 'Please double check the start date and the checkbox'
      end
    else
      if @start_date.blank? || @end_date.blank?
        p 'Fell into checkbox is blank, @start date or @end date is blank'
        flash[:error] = 'Please double check the dates'
      else
        p 'Fell into not blank / not empty <<< Success'
        @orders = Order.by_date_range(@start_date, @end_date)
        flash[:success] = "Displaying orders for #{@start_date} to #{@end_date}"
        p "#{@date_range}"
      end
    end
    render :index
  end

  private
  def set_variables
    @channels = Channel.all
  end

end
