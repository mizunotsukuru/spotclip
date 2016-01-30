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

ActiveRecord::Schema.define(version: 20160130021055) do

  create_table "events", force: :cascade do |t|
    t.integer  "number",     limit: 4,     null: false
    t.string   "name",       limit: 255,   null: false
    t.string   "title",      limit: 255
    t.text     "note",       limit: 65535
    t.string   "address",    limit: 255
    t.date     "date"
    t.time     "time"
    t.string   "url",        limit: 255
    t.string   "phone",      limit: 255
    t.string   "mail",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tag1",       limit: 255
    t.string   "tag2",       limit: 255
    t.string   "tag3",       limit: 255
    t.string   "tag4",       limit: 255
    t.string   "tag5",       limit: 255
    t.string   "image1",     limit: 255
    t.string   "image2",     limit: 255
    t.string   "image3",     limit: 255
    t.integer  "ranking",    limit: 4
    t.integer  "pickup",     limit: 4
    t.integer  "division",   limit: 4
  end

end