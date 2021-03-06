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

ActiveRecord::Schema.define(version: 20170528054648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "img_url"
    t.integer  "price"
    t.integer  "guide_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "hour"
    t.text     "includes"
    t.text     "observations"
    t.integer  "city_id"
    t.integer  "language_id"
    t.index ["guide_id"], name: "index_activities_on_guide_id", using: :btree
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "img_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "description"
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guide_languages", force: :cascade do |t|
    t.integer  "guide_id"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["guide_id"], name: "index_guide_languages_on_guide_id", using: :btree
    t.index ["language_id"], name: "index_guide_languages_on_language_id", using: :btree
  end

  create_table "guides", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.text     "description"
    t.string   "img_url"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "city_id"
    t.index ["email"], name: "index_guides_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_guides_on_reset_password_token", unique: true, using: :btree
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.string   "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "scoreable_id"
    t.string   "scoreable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tourist_languages", force: :cascade do |t|
    t.integer  "tourist_id"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["language_id"], name: "index_tourist_languages_on_language_id", using: :btree
    t.index ["tourist_id"], name: "index_tourist_languages_on_tourist_id", using: :btree
  end

  create_table "tourists", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "city_id"
    t.index ["email"], name: "index_tourists_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_tourists_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "activities", "guides"
  add_foreign_key "guide_languages", "guides"
  add_foreign_key "guide_languages", "languages"
  add_foreign_key "tourist_languages", "languages"
  add_foreign_key "tourist_languages", "tourists"
end
