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

ActiveRecord::Schema.define(version: 20160318124549) do

  create_table "districts", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.integer  "num",         precision: 38
    t.string   "num_extra"
    t.integer  "street_id",   precision: 38
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "district_id", precision: 38
  end

  add_index "houses", ["district_id"], name: "index_houses_on_district_id"
  add_index "houses", ["street_id"], name: "index_houses_on_street_id"

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.datetime "birthdate"
    t.integer  "credit",     precision: 38
    t.string   "comments"
    t.string   "parent_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "house_id",   precision: 38
  end

  create_table "streets", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trimmers", force: :cascade do |t|
    t.string   "long_url"
    t.string   "short_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "houses", "districts"
  add_foreign_key "houses", "streets"
end
