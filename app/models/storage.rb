class Storage < ApplicationRecord
  belongs_to :product

  validates :amount, presence: true, comparison: {greater_than_or_equal_to: 0}
  validates :product_id, presence: true, uniqueness: true
end
