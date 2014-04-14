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

ActiveRecord::Schema.define(version: 20140413235007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "service_providers", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.decimal  "lattitude"
    t.decimal  "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_providers_types", id: false, force: true do |t|
    t.integer "service_provider_id"
    t.integer "service_type_id"
  end

  add_index "service_providers_types", ["service_provider_id", "service_type_id"], name: "by_service_provider_service_type", using: :btree
  add_index "service_providers_types", ["service_type_id"], name: "by_service_type", using: :btree

  create_table "service_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
