class Product < ActiveRecord::Base
  establish_connection :external_db
  self.table_name = ENV['PRODUCTS_TABLE_NAME']

  has_many :order_details, foreign_key: ENV['ORDER_DETAILS_PRODUCTS_FOREIGN_KEY']
  has_many :orders, through: :order_details
  has_many :reviews


  alias_attribute :sku, ENV['PRODUCTS_SKU']
  alias_attribute :title, ENV['PRODUCTS_TITLE']

  scope :with_orders, -> {where('orders > ?', 0)}
end
