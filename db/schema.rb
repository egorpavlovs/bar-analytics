# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_12_194458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "citext"
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "title", null: false
    t.text "body", null: false
    t.string "event", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.bigint "review_id"
    t.bigint "guest_id"
    t.bigint "worker_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "guests", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "public_caterings", force: :cascade do |t|
    t.string "name"
    t.float "rating"
    t.string "address"
    t.time "start_working"
    t.time "end_working"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "refresh_tokens", force: :cascade do |t|
    t.string "token", null: false
    t.bigint "user_id", null: false
    t.datetime "expires_at", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "jti"
    t.index ["jti"], name: "index_refresh_tokens_on_jti"
    t.index ["token"], name: "index_refresh_tokens_on_token"
    t.index ["user_id"], name: "index_refresh_tokens_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title", null: false
    t.string "text", null: false
    t.float "rating"
    t.bigint "guest_id"
    t.bigint "worker_id"
    t.bigint "public_catering_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.citext "email", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "avatar_data"
    t.string "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["password_reset_token"], name: "index_users_on_password_reset_token"
  end

  create_table "workers", force: :cascade do |t|
    t.bigint "user_id"
    t.string "role"
    t.float "rating", default: 0.0, null: false
    t.float "salary"
    t.datetime "beginning_work", default: "2021-07-11 13:32:19", null: false
    t.datetime "end_work"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "public_catering_id"
  end

  add_foreign_key "activities", "users"
  add_foreign_key "refresh_tokens", "users"
end
