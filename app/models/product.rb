class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true, comparison: { greater_than_or_equal_to: 0 }
  validates :description, presence: true
end
