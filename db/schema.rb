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

ActiveRecord::Schema.define(version: 20161011125206) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.datetime "day"
    t.boolean  "status"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "attendances", ["student_id"], name: "index_attendances_on_student_id", using: :btree

  create_table "exams", force: :cascade do |t|
    t.string   "ExamName"
    t.integer  "student_id"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "exams", ["student_id"], name: "index_exams_on_student_id", using: :btree
  add_index "exams", ["subject_id"], name: "index_exams_on_subject_id", using: :btree

  create_table "results", force: :cascade do |t|
    t.integer  "marks"
    t.integer  "student_id"
    t.integer  "exam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "results", ["exam_id"], name: "index_results_on_exam_id", using: :btree
  add_index "results", ["student_id"], name: "index_results_on_student_id", using: :btree

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "sectionName"
    t.integer  "standard_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sections", ["standard_id"], name: "index_sections_on_standard_id", using: :btree

  create_table "standards", force: :cascade do |t|
    t.string   "description"
    t.integer  "school_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "standards", ["school_id"], name: "index_standards_on_school_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.integer  "dob"
    t.string   "address"
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "students", ["section_id"], name: "index_students_on_section_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.string   "SubjectName"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.integer  "dob"
    t.integer  "mobile"
    t.integer  "standard_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "teachers", ["standard_id"], name: "index_teachers_on_standard_id", using: :btree

  add_foreign_key "attendances", "students"
  add_foreign_key "exams", "students"
  add_foreign_key "exams", "subjects"
  add_foreign_key "results", "exams"
  add_foreign_key "results", "students"
  add_foreign_key "sections", "standards"
  add_foreign_key "standards", "schools"
  add_foreign_key "students", "sections"
  add_foreign_key "teachers", "standards"
end
