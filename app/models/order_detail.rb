class OrderDetail < ApplicationRecord
  has_one :customer
  has_one :order
end
