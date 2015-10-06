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

ActiveRecord::Schema.define(version: 20151005193329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohort_officers", force: :cascade do |t|
    t.integer  "contact_id"
    t.integer  "cohort_id"
    t.string   "role"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "cohort_officers", ["cohort_id"], name: "index_cohort_officers_on_cohort_id", using: :btree
  add_index "cohort_officers", ["contact_id"], name: "index_cohort_officers_on_contact_id", using: :btree

  create_table "cohorts", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cohorts", ["program_id"], name: "index_cohorts_on_program_id", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "twitter"
    t.string   "github"
    t.string   "linkedin"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "program_skills", force: :cascade do |t|
    t.integer  "program_id"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "program_skills", ["program_id"], name: "index_program_skills_on_program_id", using: :btree
  add_index "program_skills", ["skill_id"], name: "index_program_skills_on_skill_id", using: :btree

  create_table "programs", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "student_skills", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "skill_id"
    t.text     "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "student_skills", ["skill_id"], name: "index_student_skills_on_skill_id", using: :btree
  add_index "student_skills", ["student_id"], name: "index_student_skills_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.boolean  "completed"
    t.boolean  "employed"
    t.boolean  "took_survey"
    t.string   "employer"
    t.string   "employed_as"
    t.integer  "contact_id"
    t.integer  "cohort_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "students", ["cohort_id"], name: "index_students_on_cohort_id", using: :btree
  add_index "students", ["contact_id"], name: "index_students_on_contact_id", using: :btree

  add_foreign_key "cohort_officers", "cohorts"
  add_foreign_key "cohort_officers", "contacts"
  add_foreign_key "cohorts", "programs"
  add_foreign_key "program_skills", "programs"
  add_foreign_key "program_skills", "skills"
  add_foreign_key "student_skills", "skills"
  add_foreign_key "student_skills", "students"
  add_foreign_key "students", "cohorts"
  add_foreign_key "students", "contacts"
end
