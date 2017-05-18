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

ActiveRecord::Schema.define(version: 20170511111948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "adminpack"

  create_table "addresses", force: :cascade do |t|
    t.string   "city"
    t.string   "street_addr"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "addresses", ["employee_id"], name: "index_addresses_on_employee_id", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "job"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "saying"
  end

  create_table "houses", force: :cascade do |t|
    t.integer  "house_num"
    t.string   "house_num_extra"
    t.integer  "height"
    t.string   "color"
    t.string   "description"
    t.integer  "street_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "houses", ["street_id"], name: "index_houses_on_street_id", using: :btree

  create_table "programmers", force: :cascade do |t|
    t.string   "name"
    t.string   "job"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "streets", force: :cascade do |t|
    t.string   "name"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "employees"
  add_foreign_key "houses", "streets"
end
