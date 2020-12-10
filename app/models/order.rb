class Order < ApplicationRecord
  validates :shipping_address, presence: true
  validates :amount, numericality: true

end
