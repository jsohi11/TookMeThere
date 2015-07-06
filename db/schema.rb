# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150703192914) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authorizations", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.boolean  "expires"
    t.string   "picture"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
  end

  create_table "cities", force: :cascade do |t|
    t.string   "city_name"
    t.boolean  "visited"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "country_name"
    t.string   "country_badge_visisted"
    t.string   "country_badge_not_visited"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "visited"
  end

  create_table "riders", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.string   "start_city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "uid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "picture"
    t.string   "email"
  end

end
