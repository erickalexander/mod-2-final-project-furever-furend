# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171207185411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dogs", force: :cascade do |t|
    t.string "personality"
    t.string "energy_level"
    t.boolean "children_friendly"
    t.boolean "dog_friendly"
    t.string "size"
    t.integer "barking_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "breed"
    t.string "link"
  end

  create_table "homes", force: :cascade do |t|
    t.string "city_or_suburb"
    t.string "apt_or_house"
    t.integer "num_of_rooms"
    t.integer "num_of_occupants"
    t.boolean "kids", default: false
    t.boolean "pets", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_homes_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "num_hours_at_work"
    t.integer "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "user_dogs", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "dog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_user_dogs_on_dog_id"
    t.index ["user_id"], name: "index_user_dogs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "job_id"
    t.integer "home_id"
  end

  add_foreign_key "homes", "users"
  add_foreign_key "user_dogs", "dogs"
  add_foreign_key "user_dogs", "users"
end
