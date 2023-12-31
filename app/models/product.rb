class Product < ApplicationRecord
  has_one :storage, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :price, presence: true, comparison: {greater_than_or_equal_to: 0}
  validates :description, length: {maximum: 1000}
end
