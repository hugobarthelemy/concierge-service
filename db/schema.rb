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

ActiveRecord::Schema.define(version: 2018_11_03_120020) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "demandes", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "applicant_id", null: false
    t.uuid "heading_id", null: false
    t.text "title", null: false
    t.text "description", null: false
    t.text "status", null: false
    t.text "volunteer_ids", default: [], array: true
    t.text "text", default: [], array: true
  end

  create_table "headings", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "human_id"
    t.text "title", null: false
  end

  create_table "headings_users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id", null: false
    t.uuid "heading_id", null: false
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "first_name", null: false
    t.text "last_name", null: false
    t.text "address_line1", null: false
    t.text "address_line2"
    t.text "city", null: false
    t.text "postal_code", null: false
    t.text "mobile_phone_number"
    t.text "fixed_line_phone_number"
    t.date "date_of_birth"
    t.integer "priority_contact"
    t.datetime "interior_regulations_accepted_at", null: false
    t.datetime "statutes_accepted_at", null: false
    t.datetime "personal_data_policy_accepted_at", null: false
    t.datetime "publication_picture_accepted_at"
    t.datetime "admin_accepted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
