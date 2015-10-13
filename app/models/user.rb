class User < ActiveRecord::Base
  if Rails.env.production?
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  else
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  end
end
