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

ActiveRecord::Schema.define(version: 20150608215939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assignments", ["role_id"], name: "index_assignments_on_role_id", using: :btree
  add_index "assignments", ["user_id"], name: "index_assignments_on_user_id", using: :btree

  create_table "change_logs", force: :cascade do |t|
    t.integer  "task_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "change_logs", ["task_id"], name: "index_change_logs_on_task_id", using: :btree

  create_table "chores", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "chores", ["task_id"], name: "index_chores_on_task_id", using: :btree
  add_index "chores", ["user_id"], name: "index_chores_on_user_id", using: :btree

  create_table "lesson_users", force: :cascade do |t|
    t.integer  "lesson_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lesson_users", ["lesson_id"], name: "index_lesson_users_on_lesson_id", using: :btree
  add_index "lesson_users", ["user_id"], name: "index_lesson_users_on_user_id", using: :btree

  create_table "lessons", force: :cascade do |t|
    t.integer  "lesson_number"
    t.integer  "subject_id"
    t.integer  "offer_id"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "lessons", ["offer_id"], name: "index_lessons_on_offer_id", using: :btree
  add_index "lessons", ["subject_id"], name: "index_lessons_on_subject_id", using: :btree

  create_table "materials", force: :cascade do |t|
    t.integer  "lesson_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "file"
  end

  add_index "materials", ["lesson_id"], name: "index_materials_on_lesson_id", using: :btree

  create_table "offers", force: :cascade do |t|
    t.integer  "year"
    t.integer  "semester"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "tilte"
    t.text     "description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "status",      default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string   "nickname"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "assignments", "roles"
  add_foreign_key "assignments", "users"
  add_foreign_key "change_logs", "tasks"
  add_foreign_key "chores", "tasks"
  add_foreign_key "chores", "users"
  add_foreign_key "lesson_users", "lessons"
  add_foreign_key "lesson_users", "users"
  add_foreign_key "lessons", "offers"
  add_foreign_key "lessons", "subjects"
  add_foreign_key "materials", "lessons"
end
