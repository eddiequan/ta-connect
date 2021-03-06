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

ActiveRecord::Schema.define(version: 20170406203005) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ta_applications", force: :cascade do |t|
    t.string   "details"
    t.integer  "user_id"
    t.integer  "course_id"
    t.boolean  "previous_ta_experience"
    t.integer  "preferences"
    t.datetime "created_at"
    t.datetime "submitted_at"
    t.boolean  "taken_in_past"
  end

  create_table "users", force: :cascade do |t|
    t.string   "utorid"
    t.string   "password_digest"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.bigint   "student_number"
    t.string   "family_name"
    t.string   "given_name"
    t.string   "program"
    t.integer  "year"
    t.boolean  "previous_ta_experience"
    t.boolean  "work_status"
    t.string   "work_status_explain"
    t.string   "department"
    t.string   "department_explanation"
    t.datetime "date_of_application"
    t.string   "phone_number"
    t.boolean  "previously_declined"
    t.integer  "remaining_teaching_hours", default: 0
  end

end
