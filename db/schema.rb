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

ActiveRecord::Schema.define(version: 2022_02_06_152319) do

  create_table "map_apis", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schedule_driveplans", force: :cascade do |t|
    t.integer "schedule_hoteldate_id", null: false
    t.time "start_time"
    t.string "d_address"
    t.string "a_address"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "distance"
    t.string "duration"
    t.string "d_name"
    t.string "a_name"
    t.time "s_time"
    t.integer "meal_price"
    t.string "name"
    t.text "comment"
    t.string "image_id"
    t.integer "f_price"
    t.index ["schedule_hoteldate_id"], name: "index_schedule_driveplans_on_schedule_hoteldate_id"
  end

  create_table "schedule_hoteldates", force: :cascade do |t|
    t.integer "schedule_id", null: false
    t.date "hotel_date"
    t.string "hotel_name"
    t.text "hotel_url"
    t.string "image_id"
    t.integer "hotel_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.time "start_time"
    t.index ["schedule_id"], name: "index_schedule_hoteldates_on_schedule_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.date "start_date"
    t.date "end_date"
    t.integer "num_p"
    t.string "image_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.integer "fuel"
    t.float "fuel_economy"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.text "profile"
    t.string "profile_image_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "schedule_driveplans", "schedule_hoteldates"
  add_foreign_key "schedule_hoteldates", "schedules"
end
