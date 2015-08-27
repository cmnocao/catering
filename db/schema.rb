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

ActiveRecord::Schema.define(version: 20150826210334) do

  create_table "addresses", force: :cascade do |t|
    t.string   "line1",            null: false
    t.string   "line2"
    t.string   "postcode",         null: false
    t.string   "city",             null: false
    t.string   "state"
    t.string   "country",          null: false
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["addressable_id", "addressable_type"], name: "index_addresses_on_addressable_id_and_addressable_type"

  create_table "clients", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", force: :cascade do |t|
    t.string   "email",          null: false
    t.string   "typ",            null: false
    t.integer  "emailable_id"
    t.string   "emailable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emails", ["emailable_id", "emailable_type"], name: "index_emails_on_emailable_id_and_emailable_type"

  create_table "events", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "client_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["client_id"], name: "index_events_on_client_id"

  create_table "facilities", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organisers", force: :cascade do |t|
    t.string   "name",               null: false
    t.integer  "organiserable_id"
    t.string   "organiserable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "organisers", ["organiserable_id", "organiserable_type"], name: "index_organisers_on_organiserable_id_and_organiserable_type"

  create_table "phones", force: :cascade do |t|
    t.string   "idd",            null: false
    t.string   "number",         null: false
    t.string   "typ",            null: false
    t.integer  "phoneable_id"
    t.string   "phoneable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["phoneable_id", "phoneable_type"], name: "index_phones_on_phoneable_id_and_phoneable_type"

  create_table "venues", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "event_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "venues", ["event_id"], name: "index_venues_on_event_id"

end
