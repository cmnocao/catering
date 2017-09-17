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

ActiveRecord::Schema.define(version: 20170529180004) do

  create_table "addresses", force: :cascade do |t|
    t.string   "line1",                           null: false
    t.string   "line2"
    t.string   "postcode",                        null: false
    t.string   "city",                            null: false
    t.string   "state"
    t.string   "country_id",                      null: false
    t.boolean  "active",           default: true
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["addressable_id"], name: "index_addresses_on_addressable_id"
  add_index "addresses", ["addressable_type"], name: "index_addresses_on_addressable_type"
  add_index "addresses", ["country_id"], name: "index_addresses_on_country_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name",                              null: false
    t.boolean  "active",             default: true
    t.integer  "categorizable_id"
    t.string   "categorizable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["categorizable_id", "categorizable_type"], name: "index_categories_on_categorizable_id_and_categorizable_type"

  create_table "clients", force: :cascade do |t|
    t.string   "name",                      null: false
    t.boolean  "active",     default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name",                        null: false
    t.string   "iso2",                        null: false
    t.string   "iso3",                        null: false
    t.string   "capital_name"
    t.boolean  "active",       default: true
    t.string   "nationality"
    t.string   "idd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", force: :cascade do |t|
    t.string   "email",                         null: false
    t.string   "typ",                           null: false
    t.boolean  "active",         default: true
    t.integer  "emailable_id"
    t.string   "emailable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emails", ["emailable_id", "emailable_type"], name: "index_emails_on_emailable_id_and_emailable_type"

  create_table "equipments", force: :cascade do |t|
    t.integer  "category",   null: false
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",          null: false
    t.text     "description"
    t.string   "typ",           null: false
    t.integer  "client_id",     null: false
    t.integer  "venue_id"
    t.text     "timing"
    t.text     "menu"
    t.text     "special_diets"
    t.text     "more_info"
    t.string   "status",        null: false
    t.datetime "start_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["client_id"], name: "index_events_on_client_id"

  create_table "facilities", force: :cascade do |t|
    t.string   "name",                       null: false
    t.text     "description"
    t.boolean  "active",      default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilitizations", force: :cascade do |t|
    t.integer  "venue_id"
    t.integer  "facility_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "facilitizations", ["facility_id"], name: "index_facilitizations_on_facility_id"
  add_index "facilitizations", ["venue_id"], name: "index_facilitizations_on_venue_id"

  create_table "organisers", force: :cascade do |t|
    t.string   "name",                              null: false
    t.boolean  "active",             default: true
    t.integer  "organiserable_id"
    t.string   "organiserable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "organisers", ["organiserable_id", "organiserable_type"], name: "index_organisers_on_organiserable_id_and_organiserable_type"

  create_table "phones", force: :cascade do |t|
    t.string   "idd",                           null: false
    t.string   "number",                        null: false
    t.string   "typ",                           null: false
    t.boolean  "active",         default: true
    t.integer  "phoneable_id"
    t.string   "phoneable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["phoneable_id", "phoneable_type"], name: "index_phones_on_phoneable_id_and_phoneable_type"

  create_table "rooms", force: :cascade do |t|
    t.string   "name",                        null: false
    t.text     "description"
    t.boolean  "layouts",     default: false
    t.integer  "venue_id",                    null: false
    t.boolean  "active",      default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staff_lists", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "name",                      null: false
    t.boolean  "active",     default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", force: :cascade do |t|
    t.string   "name",                        null: false
    t.string   "opening_time"
    t.string   "closing_time"
    t.text     "history"
    t.string   "website"
    t.boolean  "active",       default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
