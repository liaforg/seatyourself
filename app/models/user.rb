class User < ApplicationRecord

  has_many :reservations
  has_many :restaurants

  has_secure_password

  validates :name, :email, presence: true

  ALLOWED_ROLES = ["user", "owner"]

end
