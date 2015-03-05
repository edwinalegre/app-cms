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

ActiveRecord::Schema.define(version: 20150304224749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pages", force: :cascade do |t|
    t.string   "name"
    t.string   "page_type"
    t.string   "link"
    t.string   "background"
    t.integer  "position"
    t.boolean  "visible",    default: false
    t.integer  "website_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.string   "section_type"
    t.boolean  "visible",      default: false
    t.string   "content"
    t.integer  "page_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "columns"
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "websites", force: :cascade do |t|
    t.string   "name"
    t.string   "theme"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "tagline"
    t.string   "logo"
    t.string   "backgroundimage"
    t.string   "footer"
  end

end
