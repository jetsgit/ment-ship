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

ActiveRecord::Schema.define(version: 20140920131652) do

  create_table "creators", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "addr1"
    t.string   "addr2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disbursements", force: true do |t|
    t.integer  "creator_id"
    t.integer  "grant_id"
    t.decimal  "amount"
    t.text     "description"
    t.text     "obligations"
    t.time     "award_start_date"
    t.time     "award_end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grants", force: true do |t|
    t.string   "name"
    t.string   "organization"
    t.string   "email"
    t.string   "phone"
    t.string   "contact_fname"
    t.string   "contact_lname"
    t.string   "addr1"
    t.string   "addr2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "fund_type"
    t.string   "app_process"
    t.time     "app_deadline"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proposals", force: true do |t|
    t.string   "title"
    t.text     "summary"
    t.time     "submitted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resumes", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "revision"
    t.integer  "creator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
