class Order < ActiveRecord::Base
  belongs_to :user
  has_many :lineitems, dependent: :destroy
  has_many :items, through: :lineitems
end
