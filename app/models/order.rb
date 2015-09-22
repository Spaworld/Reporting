class Order < ActiveRecord::Base
  self.table_name = ENV['ORDERS_TABLE_NAME']

  belongs_to :channel, foreign_key: ENV['CHANNELS_FOREIGN_KEY']

  alias_attribute :type, ENV['ORDERS_ORDER_TYPE']
  # alias_attirbute :price, ENV['ORDERS_PRICE']

end
