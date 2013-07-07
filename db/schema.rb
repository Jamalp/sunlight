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

ActiveRecord::Schema.define(version: 20130707183403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", id: false, force: true do |t|
    t.string  "city_name"
    t.string  "state_name"
    t.integer "temp"
    t.integer "population"
  end

  create_table "contacts", force: true do |t|
    t.string  "first",  limit: 25
    t.string  "last",   limit: 25
    t.integer "age"
    t.string  "gender", limit: 1
    t.boolean "dtgd"
    t.string  "phone",  limit: 12
  end

  create_table "guitars", force: true do |t|
    t.string   "make"
    t.string   "model"
    t.integer  "year"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: true do |t|
    t.string  "name"
    t.string  "description"
    t.integer "people_id"
  end

  create_table "people", force: true do |t|
    t.string "name"
    t.string "title"
  end

  create_table "politicians", force: true do |t|
    t.string  "firstname"
    t.string  "lastname"
    t.string  "party"
    t.string  "state"
    t.string  "twitter_id"
    t.boolean "in_office"
    t.string  "votesmart_id"
  end

  create_table "tasks", force: true do |t|
    t.string  "name"
    t.string  "description"
    t.boolean "complete"
    t.integer "movie_id"
    t.integer "people_id"
  end

end
