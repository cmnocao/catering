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

ActiveRecord::Schema.define(version: 20150825162722) do

  create_table "addresses", force: :cascade do |t|
    t.string   "line1",      null: false
    t.string   "line2"
    t.string   "postcode",   null: false
    t.string   "city",       null: false
    t.string   "state"
    t.string   "country",    null: false
    t.integer  "owner_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["owner_id"], name: "index_addresses_on_owner_id"

  create_table "emails", force: :cascade do |t|
    t.string   "email"
    t.string   "typ"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emails", ["owner_id"], name: "index_emails_on_owner_id"

  create_table "phones", force: :cascade do |t|
    t.string   "idd",        null: false
    t.string   "number",     null: false
    t.string   "typ",        null: false
    t.integer  "owner_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["owner_id"], name: "index_phones_on_owner_id"

end
