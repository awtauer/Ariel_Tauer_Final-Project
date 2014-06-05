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

ActiveRecord::Schema.define(version: 20140605012437) do

  create_table "park_program_applications", force: true do |t|
    t.string   "student_name"
    t.integer  "cps_id"
    t.string   "school_of_attendance"
    t.string   "park_name"
    t.string   "park_address"
    t.integer  "admin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "safety_hazard_applications", force: true do |t|
    t.string   "student_name"
    t.integer  "cps_id"
    t.string   "home_address"
    t.string   "school_of_attendance"
    t.string   "school_address"
    t.string   "hazard_location"
    t.string   "hazard_type"
    t.integer  "admin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sibling_applications", force: true do |t|
    t.string   "school_of_attendance"
    t.string   "ineligible_student"
    t.integer  "ineligible_cps_id"
    t.string   "eligible_student"
    t.integer  "eligible_cps_id"
    t.string   "relationship"
    t.string   "home_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "special_education_applications", force: true do |t|
    t.string   "student_name"
    t.integer  "cps_id"
    t.string   "school_of_attendance"
    t.string   "daytime"
    t.integer  "admin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
