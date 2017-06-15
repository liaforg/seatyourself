class User < ApplicationRecord
  has_many :reservation
  has_many :restaurant

end
