class CreateTransits < ActiveRecord::Migration[6.1]
  def change
    create_table :transits do |t|
      t.string :second_name
      t.string :first_name
      t.string :patronymic
      t.string :tel
      t.string :email
      t.integer :weight
      t.integer :length
      t.integer :width
      t.integer :height
      t.string :point_of_departure
      t.string :destination
      t.integer :distance
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
