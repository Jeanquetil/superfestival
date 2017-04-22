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

ActiveRecord::Schema.define(version: 20170418210803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "main_genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concerts", id: :serial, force: :cascade do |t|
    t.integer "artist_id"
    t.integer "festival_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "stage"
    t.datetime "start_at"
    t.datetime "end_at"
    t.index ["artist_id"], name: "index_concerts_on_artist_id"
    t.index ["festival_id"], name: "index_concerts_on_festival_id"
  end

  create_table "festivals", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_at"
    t.datetime "end_at"
  end

  create_table "participations", id: :serial, force: :cascade do |t|
    t.integer "timetable_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "session_id"
    t.index ["timetable_id"], name: "index_participations_on_timetable_id"
    t.index ["user_id"], name: "index_participations_on_user_id"
  end

  create_table "timetable_events", id: :serial, force: :cascade do |t|
    t.integer "timetable_id"
    t.integer "concert_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concert_id"], name: "index_timetable_events_on_concert_id"
    t.index ["timetable_id"], name: "index_timetable_events_on_timetable_id"
  end

  create_table "timetables", id: :serial, force: :cascade do |t|
    t.integer "festival_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["festival_id"], name: "index_timetables_on_festival_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "is_admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "concerts", "artists"
  add_foreign_key "concerts", "festivals"
  add_foreign_key "participations", "timetables"
  add_foreign_key "participations", "users"
  add_foreign_key "timetable_events", "concerts"
  add_foreign_key "timetable_events", "timetables"
  add_foreign_key "timetables", "festivals"
end
