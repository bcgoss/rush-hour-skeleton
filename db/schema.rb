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

ActiveRecord::Schema.define(version: 20160823224159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ips", force: :cascade do |t|
    t.text     "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payload_requests", force: :cascade do |t|
    t.datetime "requested_at"
    t.integer  "responded_in"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "resolution_id"
    t.integer  "user_agent_id"
    t.integer  "referral_id"
    t.integer  "ip_id"
    t.integer  "request_type_id"
    t.integer  "url_id"
  end

  create_table "referrals", force: :cascade do |t|
    t.text     "referred_by"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "request_types", force: :cascade do |t|
    t.text     "request_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "resolutions", force: :cascade do |t|
    t.text     "height"
    t.text     "width"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "urls", force: :cascade do |t|
    t.text     "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_agents", force: :cascade do |t|
    t.text     "browser"
    t.text     "operating_system"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end