class User < ActiveRecord::Base
  has_many :orders
  has_many :items, through: :orders
  has_secure_password
end
