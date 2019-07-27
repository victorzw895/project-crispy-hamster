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

ActiveRecord::Schema.define(version: 2019_07_26_061653) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "industries", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries_users", id: false, force: :cascade do |t|
    t.bigint "industry_id"
    t.bigint "user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.bigint "user_id"
    t.text "title"
    t.text "content"
    t.text "media"
    t.text "content_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "name"
    t.text "tag_line"
    t.text "about"
    t.text "logo_image"
    t.text "banner_image"
    t.text "more"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
