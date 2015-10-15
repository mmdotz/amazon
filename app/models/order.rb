class Order < ActiveRecord::Base
  belongs_to :user
  has_many :lineitems, dependent: :destroy
end
