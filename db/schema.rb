# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140325115713) do

  create_table "assistents", force: true do |t|
    t.string   "first_names"
    t.string   "last_names"
    t.text     "address"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "hire_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "autobuses", force: true do |t|
    t.string   "license_plate"
    t.string   "brand"
    t.string   "color"
    t.decimal  "capacity",           precision: 10, scale: 0
    t.integer  "passenger_capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "name"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "costs", force: true do |t|
    t.string   "name"
    t.string   "from"
    t.string   "to"
    t.string   "stopover"
    t.string   "content"
    t.decimal  "price",      precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", force: true do |t|
    t.string   "name"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drivers", force: true do |t|
    t.string   "first_names"
    t.string   "last_names"
    t.text     "address"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "hire_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "first_names"
    t.string   "last_names"
    t.text     "address"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "hire_date"
    t.integer  "department_id"
    t.integer  "station_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fares", force: true do |t|
    t.string   "name"
    t.decimal  "price",       precision: 10, scale: 0
    t.string   "from"
    t.string   "to"
    t.string   "stopover"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.time     "departure_time"
    t.time     "arrival_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shipments", force: true do |t|
    t.integer  "client_id"
    t.string   "addressee"
    t.string   "phone_number"
    t.integer  "trip_id"
    t.integer  "cost_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stations", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone_number"
    t.string   "office_hours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: true do |t|
    t.integer  "client_id"
    t.integer  "employee_id"
    t.integer  "fare_id"
    t.integer  "trip_id"
    t.datetime "trip_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", force: true do |t|
    t.integer  "employee_id"
    t.integer  "autobus_id"
    t.integer  "schedule_id"
    t.integer  "available_seats"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
