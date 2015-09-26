class Channel < ActiveRecord::Base
  self.table_name = ENV['CHANNELS_TABLE_NAME']

  has_many :orders, class_name: 'Order', foreign_key: ENV['ORDERS_FOREIGN_KEY']

  # Column name translator
  alias_attribute :name, ENV['CHANNELS_COMPANY_NAME']
  alias_attribute :id, ENV['CHANNELS_PRIMARY_KEY']

  # alias_attribute :selected_channels,
  def selected_channels
    return ENV['SELECTED_CHANNELS']
  end

  default_scope { where(id: @selected_channels) }

  private
  @selected_channels = ENV['SELECTED_CHANNELS'].split(',')
end
