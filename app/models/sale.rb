class Sale < ActiveRecord::Base
  self.table_name = ENV['SALES_TABLE_NAME']
end
