# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_01_160142) do

  create_table "transits", force: :cascade do |t|
    t.string "second_name"
    t.string "first_name"
    t.string "patronymic"
    t.string "tel"
    t.string "email"
    t.integer "weight"
    t.integer "length"
    t.integer "width"
    t.integer "height"
    t.string "point_of_departure"
    t.string "destination"
    t.integer "distance"
    t.integer "price"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_transits_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "second_name"
    t.string "first_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
