class Sale < ActiveRecord::Base
  establish_connection :external_db
  self.table_name = ENV['SALES_TABLE_NAME']
end
