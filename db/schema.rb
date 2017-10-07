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

ActiveRecord::Schema.define(version: 20171006170737) do

  create_table "accounts", force: :cascade do |t|
    t.integer "subscriber_id"
    t.datetime "start_date"
    t.boolean "free_expired"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "content_providers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "credit_cards", force: :cascade do |t|
    t.integer "subscriber_id"
    t.string "account_number"
    t.string "issuer"
    t.date "expiration_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "licenses", force: :cascade do |t|
    t.integer "content_provider_id"
    t.boolean "exclusive"
    t.integer "terms_in_years"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.integer "account_id"
    t.string "tier"
    t.integer "price"
    t.integer "streaming_limit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscribers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email_address"
    t.integer "zip_code"
    t.string "payment_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "video_streams", force: :cascade do |t|
    t.integer "subscriber_id"
    t.integer "video_id"
    t.date "date"
    t.integer "duration"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.integer "license_id"
    t.integer "genre_id"
    t.string "title"
    t.string "content_type"
    t.integer "concurrent_subscriber_limit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
