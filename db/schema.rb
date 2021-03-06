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

ActiveRecord::Schema.define(version: 2021_11_15_202333) do

  create_table "admin_orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "accession_id"
    t.string "external_id"
    t.string "physician"
    t.integer "kit_no"
    t.string "kit_type"
    t.date "results_needed_by"
    t.date "requisition_date"
    t.date "end_date"
    t.string "priority"
    t.integer "turn_around_time"
    t.string "medication"
    t.string "allergies"
    t.date "specimen_collect_date"
    t.date "specimen_receive_date"
    t.string "collection_method"
    t.date "travel_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_patients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "age"
    t.string "gender"
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pid"
    t.string "external_pid"
    t.string "internal_id"
    t.string "related_use"
    t.string "payment_type"
    t.string "document_type"
    t.date "date_of_birth"
    t.string "race"
    t.string "ethnicity"
    t.string "street"
    t.string "street2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.integer "phone"
    t.integer "mobile"
    t.string "county"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_admin_patients_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin", default: false
    t.string "firstname"
    t.string "lastname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "admin_patients", "users"
end
