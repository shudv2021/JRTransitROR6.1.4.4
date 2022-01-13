class Admin < User
  
  validates :first_name, :second_name, presence: true
  
end
