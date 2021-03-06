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

ActiveRecord::Schema.define(version: 20160104063339) do

  create_table "contact_details", force: :cascade do |t|
    t.integer  "contact_id", limit: 4
    t.string   "name",       limit: 255
    t.string   "surname",    limit: 255
    t.string   "address",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "contact_details", ["contact_id"], name: "index_contact_details_on_contact_id", using: :btree

  create_table "contact_infos", force: :cascade do |t|
    t.integer  "contact_id", limit: 4
    t.string   "gender",     limit: 255
    t.string   "phone",      limit: 255
    t.integer  "height",     limit: 4
    t.boolean  "is_active"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "contact_infos", ["contact_id"], name: "index_contact_infos_on_contact_id", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "email",       limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_foreign_key "contact_details", "contacts"
  add_foreign_key "contact_infos", "contacts"
end
