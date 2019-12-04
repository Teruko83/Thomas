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


ActiveRecord::Schema.define(version: 2019_12_03_212347) do



  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "babies", force: :cascade do |t|
    t.string "name"
    t.string "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_babies_on_user_id"
  end

  create_table "badge_ownerships", force: :cascade do |t|
    t.string "badge_type"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_badge_ownerships_on_user_id"
  end

  create_table "bottlefeedings", force: :cascade do |t|
    t.datetime "start"
    t.integer "quantity"
    t.bigint "baby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_date"
    t.bigint "user_id"
    t.index ["baby_id"], name: "index_bottlefeedings_on_baby_id"
    t.index ["user_id"], name: "index_bottlefeedings_on_user_id"
  end

  create_table "breast_feedings", force: :cascade do |t|
    t.boolean "breast"
    t.string "breast_side", default: "L"
    t.integer "quantity"
    t.bigint "baby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "duration_minutes"
    t.datetime "start"
    t.datetime "start_date"
    t.bigint "user_id"
    t.index ["baby_id"], name: "index_breast_feedings_on_baby_id"
    t.index ["user_id"], name: "index_breast_feedings_on_user_id"
  end

  create_table "care_takings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "baby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "name"
    t.index ["baby_id"], name: "index_care_takings_on_baby_id"
    t.index ["user_id"], name: "index_care_takings_on_user_id"
  end

  create_table "diapers", force: :cascade do |t|
    t.datetime "start_date"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "baby_id"
    t.string "comment"
    t.string "created_by"
    t.bigint "user_id"
    t.index ["baby_id"], name: "index_diapers_on_baby_id"
    t.index ["user_id"], name: "index_diapers_on_user_id"
  end

  create_table "sleeps", force: :cascade do |t|
    t.string "sleeps"
    t.integer "integer"
    t.string "sleep_type"
    t.string "string"
    t.bigint "sleeps_id"
    t.bigint "baby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_date"
    t.float "sleep_time"
    t.bigint "user_id"
    t.index ["baby_id"], name: "index_sleeps_on_baby_id"
    t.index ["sleeps_id"], name: "index_sleeps_on_sleeps_id"
    t.index ["user_id"], name: "index_sleeps_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "active_baby_id"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "babies", "users"
  add_foreign_key "badge_ownerships", "users"
  add_foreign_key "bottlefeedings", "babies"
  add_foreign_key "bottlefeedings", "users"
  add_foreign_key "breast_feedings", "babies"
  add_foreign_key "breast_feedings", "users"
  add_foreign_key "diapers", "babies"
  add_foreign_key "diapers", "users"
  add_foreign_key "sleeps", "babies"
  add_foreign_key "sleeps", "sleeps", column: "sleeps_id"
  add_foreign_key "sleeps", "users"
end
