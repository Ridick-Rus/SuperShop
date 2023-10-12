class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  belongs_to :user

  validates :user_id, :commentable_id, :commentable_type, :body, presence: true
  validates :body, length: {maximum: 2000}
end
