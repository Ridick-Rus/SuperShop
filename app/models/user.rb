class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  validates :email, uniqueness: true, presence: true
  validates :encrypted_password, presence: true
  validates :reset_password_token, uniqueness: {where: "(reset_password_token IS NOT NULL)"}

  validates :email, format: {with: URI::MailTo::RFC5322}

  validate :password_validation

  private

  def password_validation
    return if password.match?(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/)

    errors.add(:password, "has invalid format")
  end
end
