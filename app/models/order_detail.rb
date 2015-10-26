class OrderDetail < ActiveRecord::Base
  establish_connection :external_db
  self.table_name = ENV['ORDER_DETAILS_TABLE_NAME']

  belongs_to :order, foreign_key: ENV['ORDER_DETAILS_ORDERS_FOREIGN_KEY']
  belongs_to :product, foreign_key: ENV['ORDER_DETAILS_PRODUCTS_FOREIGN_KEY']
  alias_attribute :price, ENV['ORDER_DETAILS_PRICE']
  alias_attribute :quantity, ENV['ORDER_DETAILS_QUANTITY'] #make this to_i

  # scope :top_sellers, -> {where(quantity >= 1 )}
  # scope :by_date_range, -> (start_date, end_date) { where(created_at: start_date..end_date) }

  def quantity
    quantity.to_i
  end
end
