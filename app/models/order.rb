class Order < ActiveRecord::Base
  establish_connection :external_db
  self.table_name = ENV['ORDERS_TABLE_NAME']

  belongs_to :channel, foreign_key: ENV['CHANNELS_FOREIGN_KEY']
  has_many :order_details, foreign_key: ENV['ORDER_DETAILS_ORDERS_FOREIGN_KEY']
  has_many :products, through: :order_details

  alias_attribute :type, ENV['ORDERS_ORDER_TYPE']
  alias_attribute :created_at, ENV['ORDERS_DATE']
  alias_attribute :total_price, ENV['ORDERS_PRICE']

  scope :by_date, -> (requested_datetime) { where("#{ENV['ORDERS_DATE']} = ?", requested_datetime.to_date) }
  scope :selected_channels, -> { where 'channel = ?', Channel.where(id: ENV['SELECTED_CHANNELS']) }

end
