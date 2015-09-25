class OrderDetail < ActiveRecord::Base
  self.table_name = ENV['ORDER_DETAILS_TABLE_NAME']

  belongs_to :order, foreign_key: ENV['ORDER_DETAILS_ORDERS_FOREIGN_KEY']
  belongs_to :product, foreign_key: ENV['ORDER_DETAILS_PRODUCTS_FOREIGN_KEY']
  alias_attribute :price, ENV['ORDER_DETAIL_PRICE']
end
