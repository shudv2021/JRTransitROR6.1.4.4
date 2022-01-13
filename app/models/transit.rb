class Transit < ApplicationRecord

    belongs_to :user

    validates :second_name, 
    :first_name,
    :patronymic,
    :tel,
    :email,
    :weight,
    :length,
    :width,
    :height,
    :point_of_departure,
    :destination, presence: true



end
