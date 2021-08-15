# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_15_181026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_business_hours", force: :cascade do |t|
    t.integer "day", null: false
    t.time "open_time", null: false
    t.time "close_time", null: false
    t.bigint "address_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_address_business_hours_on_address_id"
  end

  create_table "address_contacts", force: :cascade do |t|
    t.string "address_contact_type", null: false
    t.string "address_contact_value", null: false
    t.bigint "address_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_address_contacts_on_address_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "number"
    t.string "complement"
    t.string "district"
    t.string "city"
    t.string "state", null: false
    t.string "country", null: false
    t.bigint "public_profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["public_profile_id"], name: "index_addresses_on_public_profile_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "public_profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["public_profile_id"], name: "index_favourites_on_public_profile_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "links", force: :cascade do |t|
    t.integer "link_type", null: false
    t.string "url", null: false
    t.bigint "public_profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["public_profile_id"], name: "index_links_on_public_profile_id"
  end

  create_table "profile_business_hours", force: :cascade do |t|
    t.integer "day", null: false
    t.time "open_time", null: false
    t.time "close_time", null: false
    t.bigint "public_profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["public_profile_id"], name: "index_profile_business_hours_on_public_profile_id"
  end

  create_table "profile_contacts", force: :cascade do |t|
    t.string "profile_contact_type", null: false
    t.string "profile_contact_value", null: false
    t.bigint "public_profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["public_profile_id"], name: "index_profile_contacts_on_public_profile_id"
  end

  create_table "profile_languages", force: :cascade do |t|
    t.bigint "public_profile_id", null: false
    t.bigint "language_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["language_id"], name: "index_profile_languages_on_language_id"
    t.index ["public_profile_id"], name: "index_profile_languages_on_public_profile_id"
  end

  create_table "provider_specialities", force: :cascade do |t|
    t.bigint "speciality_id", null: false
    t.bigint "public_profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["public_profile_id"], name: "index_provider_specialities_on_public_profile_id"
    t.index ["speciality_id"], name: "index_provider_specialities_on_speciality_id"
  end

  create_table "public_profiles", force: :cascade do |t|
    t.string "name", null: false
    t.string "professional_registry"
    t.string "description", null: false
    t.string "gender"
    t.string "ethnicity"
    t.integer "age"
    t.string "photo"
    t.boolean "has_online_service", null: false
    t.boolean "has_home_service", null: false
    t.boolean "is_pcd"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_public_profiles_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "public_profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "rating", null: false
    t.index ["public_profile_id"], name: "index_reviews_on_public_profile_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "area_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["area_id"], name: "index_specialities_on_area_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name", null: false
    t.string "district"
    t.string "city"
    t.string "state"
    t.boolean "status", default: false
    t.boolean "admin", default: false
    t.string "country"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "address_business_hours", "addresses"
  add_foreign_key "address_contacts", "addresses"
  add_foreign_key "addresses", "public_profiles"
  add_foreign_key "favourites", "public_profiles"
  add_foreign_key "favourites", "users"
  add_foreign_key "links", "public_profiles"
  add_foreign_key "profile_business_hours", "public_profiles"
  add_foreign_key "profile_contacts", "public_profiles"
  add_foreign_key "profile_languages", "languages"
  add_foreign_key "profile_languages", "public_profiles"
  add_foreign_key "provider_specialities", "public_profiles"
  add_foreign_key "provider_specialities", "specialities"
  add_foreign_key "public_profiles", "users"
  add_foreign_key "reviews", "public_profiles"
  add_foreign_key "reviews", "users"
  add_foreign_key "specialities", "areas"
end
