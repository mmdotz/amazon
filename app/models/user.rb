class User < ActiveRecord::Base
  has_many :orders
  has_secure_password

  def current_order
    orders.where(paid: false).first
  end
end
