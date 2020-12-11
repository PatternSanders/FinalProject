class Order < ApplicationRecord
  has_many :order_details
  validates :shipping_address, presence: true
  validates :amount, numericality: true

end
