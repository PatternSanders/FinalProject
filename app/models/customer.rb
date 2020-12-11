class Customer < ApplicationRecord
  has_one :province
  has_many :order_details
end
