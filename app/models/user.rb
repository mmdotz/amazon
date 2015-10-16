class User < ActiveRecord::Base
  has_many :orders
  has_secure_password

  def current_order
    orders.where(paid: false).first
  end

  def has_no_current_order?
    !has_current_order?
  end

  def has_current_order?
    orders.where(paid: false).length >= 1
  end
end
