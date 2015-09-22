class Product < ActiveRecord::Base
  self.table_name = ENV['PRODUCTS_TABLE_NAME']

  belongs_to :order_detail, foreign_key: ENV['PRODUCTS_FOREIGN_KEY']
  has_many :orders, through: :order_details

  alias_attribute :sku, ENV['PRODUCTS_SKU']

end
