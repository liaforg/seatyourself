class Restaurant < ApplicationRecord
  has_many :reservation
  belongs_to :user
  
end
