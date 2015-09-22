class Order < ActiveRecord::Base
  self.table_name = ENV['ORDERS_TABLE_NAME']

  belongs_to :channel, foreign_key: ENV['CHANNELS_FOREIGN_KEY']
  has_many :order_details
  has_many :products, through: :order_details

  alias_attribute :type, ENV['ORDERS_ORDER_TYPE']
  # alias_attirbute :price, ENV['ORDERS_PRICE']
end
