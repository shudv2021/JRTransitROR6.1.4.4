class User < ApplicationRecord

  has_many :transits
  
  devise :database_authenticatable,
          :registerable,
          :recoverable, 
          :rememberable, 
          :validatable
end
