class Product < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :price, presence: true, comparison: { greater_than_or_equal_to: 0 }
  validates :description, length: { maximum: 1000 }
end
