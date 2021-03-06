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

ActiveRecord::Schema.define(version: 20161230175806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "destination_types", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "destroyed_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "website"
    t.string   "price_range"
    t.integer  "destination_type_id"
    t.datetime "destroyed_at"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "destroyed_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "trip_destinations", force: :cascade do |t|
    t.integer  "trip_id"
    t.integer  "destination_id"
    t.integer  "order",          default: 1, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "trip_users", force: :cascade do |t|
    t.integer  "trip_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "number_of_travelers"
    t.datetime "destroyed_at"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "birthday"
    t.datetime "destroyed_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
