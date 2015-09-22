class OrderDetail < ActiveRecord::Base
  self.table_name = ENV['ORDER_DETAILS_TABLE_NAME']

  belongs_to :order, foreign_key: ENV['ORDER_DETAILS_FOREIGN_KEY']
  has_many :products, foreign_key: ENV['PRODUCTS_FOREIGN_KEY']

end
