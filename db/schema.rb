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

ActiveRecord::Schema.define(version: 20170426024627) do

  create_table "rates", force: :cascade do |t|
    t.string   "user"
    t.string   "restaurant"
    t.integer  "rating"
    t.integer  "food_rating"
    t.integer  "service_rating"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "cuisine_type"
    t.string   "payment_type"
    t.string   "monday_hours"
    t.string   "tuesday_hours"
    t.string   "wednesday_hours"
    t.string   "thursday_hours"
    t.string   "friday_hours"
    t.string   "saturday_hours"
    t.string   "sunday_hours"
    t.string   "parking"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "fax"
    t.string   "zip"
    t.string   "smoking_area"
    t.string   "alcohol"
    t.string   "dress_code"
    t.string   "accessibility"
    t.string   "price"
    t.string   "url"
    t.string   "Rambience"
    t.decimal  "franchise"
    t.string   "area"
    t.string   "other_services"
    t.index ["email"], name: "index_restaurants_on_email", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "password_digest"
    t.         "features"
    t.string   "cuisine_type"
    t.string   "payment_type"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.         "the_geom_meter"
    t.string   "smoker"
    t.string   "drink_level"
    t.string   "dress_preference"
    t.string   "ambience"
    t.string   "transport"
    t.string   "marital_status"
    t.string   "hijos"
    t.decimal  "birth_year"
    t.string   "interest"
    t.string   "personality"
    t.string   "religion"
    t.string   "activity"
    t.string   "color"
    t.decimal  "weight"
    t.string   "budget"
    t.decimal  "height"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
