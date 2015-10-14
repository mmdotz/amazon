class Item < ActiveRecord::Base
  has_many :orders, dependent: :destroy
end
