class OrderDetail < ActiveRecord::Base
  self.table_name = ENV['ORDER_DETAILS_TABLE_NAME']
end
