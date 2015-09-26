class Channel < ActiveRecord::Base
  establish_connection :external_db
  self.table_name = ENV['CHANNELS_TABLE_NAME']

  has_many :orders, class_name: 'Order', foreign_key: ENV['ORDERS_FOREIGN_KEY']

  # Column name translator
  alias_attribute :name, ENV['CHANNELS_COMPANY_NAME']
  alias_attribute :id, ENV['CHANNELS_PRIMARY_KEY']

end
