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

ActiveRecord::Schema.define(version: 20160619122434) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.text     "content"
    t.integer  "user_id"
    t.boolean  "status",          default: false
    t.string   "reference_url"
    t.string   "github_url"
    t.float    "rating",          default: 0.0
    t.integer  "sub_category_id"
    t.boolean  "favourite"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "articles_tags", id: false, force: :cascade do |t|
    t.integer "article_id"
    t.integer "tag_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "status",      default: false
    t.boolean  "favourite"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "article_id"
    t.string   "content"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string   "name"
    t.string   "alias_name"
    t.integer  "parent_id"
    t.string   "controller"
    t.string   "action"
    t.boolean  "status",          default: false
    t.string   "access"
    t.string   "page_no"
    t.string   "sequence_number"
    t.string   "url"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "category_id"
    t.boolean  "status",      default: false
    t.boolean  "favourite"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.string   "alias_name"
    t.boolean  "status",     default: false
    t.boolean  "favourite"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.string   "email_id"
    t.string   "password"
    t.integer  "phone"
    t.boolean  "status"
    t.datetime "last_login"
    t.string   "password_secret"
    t.string   "unicode_data"
    t.string   "role"
    t.string   "reset_code"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
