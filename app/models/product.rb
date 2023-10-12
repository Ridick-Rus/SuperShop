class Product < ApplicationRecord
  has_one :storage, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :price, presence: true, comparison: {greater_than_or_equal_to: 0}
  validates_length_of :description, maximum: 1000
end
