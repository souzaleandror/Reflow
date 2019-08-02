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

ActiveRecord::Schema.define(version: 2019_08_02_202453) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "fullname", default: "", null: false
    t.string "slug"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_admins_on_confirmation_token", unique: true
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_admins_on_slug", unique: true
  end

  create_table "candidates", force: :cascade do |t|
    t.string "fullname"
    t.string "email"
    t.string "cellphone"
    t.date "date_birth"
    t.string "gender"
    t.bigint "job_id"
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.string "linkedin"
    t.string "portfolio"
    t.text "short_description"
    t.boolean "accepted"
    t.boolean "available_change_city"
    t.boolean "license_car"
    t.string "type_license_car"
    t.boolean "have_car"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "slug"
    t.boolean "good_profile"
    t.string "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_candidates_on_job_id"
    t.index ["slug"], name: "index_candidates_on_slug", unique: true
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "variable_name"
    t.text "description"
    t.boolean "inactive"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_companies_on_slug", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.text "message"
    t.boolean "accepted"
    t.boolean "newsletter"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_contacts_on_slug", unique: true
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "variable_name"
    t.text "description"
    t.boolean "inactive"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_departments_on_slug", unique: true
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name_job"
    t.bigint "department_id"
    t.bigint "company_id"
    t.bigint "type_contraction_id"
    t.string "role"
    t.text "description"
    t.string "mean_activity"
    t.string "requirement"
    t.string "desirable"
    t.string "email_send_cv"
    t.string "salary"
    t.string "benefits"
    t.string "english"
    t.string "spanish"
    t.integer "quantity_vacancy"
    t.date "end_date"
    t.boolean "job_filled"
    t.string "slug"
    t.string "img1_file_name"
    t.string "img1_content_type"
    t.integer "img1_file_size"
    t.datetime "img1_updated_at"
    t.boolean "inactive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_jobs_on_company_id"
    t.index ["department_id"], name: "index_jobs_on_department_id"
    t.index ["slug"], name: "index_jobs_on_slug", unique: true
    t.index ["type_contraction_id"], name: "index_jobs_on_type_contraction_id"
  end

  create_table "type_contractions", force: :cascade do |t|
    t.string "name"
    t.string "variable_name"
    t.text "description"
    t.boolean "inactive"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_type_contractions_on_slug", unique: true
  end

  add_foreign_key "candidates", "jobs"
  add_foreign_key "jobs", "companies"
  add_foreign_key "jobs", "departments"
  add_foreign_key "jobs", "type_contractions"
end
