class Order < ActiveRecord::Base
  establish_connection :external_db
  self.table_name = ENV['ORDERS_TABLE_NAME']

  belongs_to :channel, foreign_key: ENV['CHANNELS_FOREIGN_KEY']
  has_many :order_details, foreign_key: ENV['ORDER_DETAILS_ORDERS_FOREIGN_KEY']
  has_many :products, through: :order_details

  alias_attribute :type, ENV['ORDERS_ORDER_TYPE']
  alias_attribute :created_at, ENV['ORDERS_DATE']
  alias_attribute :total_price, ENV['ORDERS_PRICE']

  default_scope { where(channel: Channel.all) }
  scope :by_date, -> (requested_datetime) { where("#{ENV['ORDERS_DATE']} = ?", requested_datetime) }
  scope :by_date_range, -> (start_date, end_date) { where(created_at: start_date..end_date) }
  scope :by_channel, -> (channel) { where(channel: channel) }
end
