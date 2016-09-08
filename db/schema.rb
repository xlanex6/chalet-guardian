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

ActiveRecord::Schema.define(version: 20160908130518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "connection_jobs", force: :cascade do |t|
    t.integer  "job_alert_id"
    t.integer  "user_id"
    t.datetime "conect_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["job_alert_id"], name: "index_connection_jobs_on_job_alert_id", using: :btree
    t.index ["user_id"], name: "index_connection_jobs_on_user_id", using: :btree
  end

  create_table "job_alerts", force: :cascade do |t|
    t.integer  "job_categorie_id"
    t.integer  "user_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "address"
    t.integer  "ski_resort_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["job_categorie_id"], name: "index_job_alerts_on_job_categorie_id", using: :btree
    t.index ["ski_resort_id"], name: "index_job_alerts_on_ski_resort_id", using: :btree
    t.index ["user_id"], name: "index_job_alerts_on_user_id", using: :btree
  end

  create_table "job_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ski_resorts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "connection_jobs", "job_alerts"
  add_foreign_key "connection_jobs", "users"
  add_foreign_key "job_alerts", "job_categories", column: "job_categorie_id"
  add_foreign_key "job_alerts", "ski_resorts"
  add_foreign_key "job_alerts", "users"
end
