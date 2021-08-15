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

ActiveRecord::Schema.define(version: 2021_06_20_150704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "address_business_hours", force: :cascade do |t|
    t.integer "day"
    t.time "open_time"
    t.time "close_time"
    t.bigint "address_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_address_business_hours_on_address_id"
  end

  create_table "address_contacts", force: :cascade do |t|
    t.integer "address_contact_type"
    t.string "address_contact_value"
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
    t.string "state"
    t.string "country"
    t.bigint "public_profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["public_profile_id"], name: "index_addresses_on_public_profile_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "name"
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
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "links", force: :cascade do |t|
    t.integer "link_type"
    t.string "url"
    t.bigint "public_profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["public_profile_id"], name: "index_links_on_public_profile_id"
  end

  create_table "profile_business_hours", force: :cascade do |t|
    t.integer "day"
    t.time "open_time"
    t.time "close_time"
    t.bigint "public_profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["public_profile_id"], name: "index_profile_business_hours_on_public_profile_id"
  end

  create_table "profile_contacts", force: :cascade do |t|
    t.integer "profile_contact_type"
    t.string "profile_contact_value"
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
    t.string "name"
    t.string "professional_registry"
    t.text "description"
    t.string "gender"
    t.string "ethnicity"
    t.integer "age"
    t.string "photo"
    t.boolean "has_online_service"
    t.boolean "has_home_service"
    t.boolean "is_pcd"
    t.boolean "is_validated", default: false
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
    t.string "name"
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
    t.string "name"
    t.string "district"
    t.string "city"
    t.string "state"
    t.boolean "status", default: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
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
