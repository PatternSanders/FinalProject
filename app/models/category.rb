class Category < ApplicationRecord
  has_many :products

  validates :name, presence: true

  def self.prep_for_react(collection)
    collection.map
  end
end
