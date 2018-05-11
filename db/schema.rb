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

ActiveRecord::Schema.define(version: 2018_05_10_215642) do

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.integer "user_id_id"
    t.integer "project_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id_id"], name: "index_comments_on_project_id_id"
    t.index ["user_id_id"], name: "index_comments_on_user_id_id"
  end

  create_table "emails", force: :cascade do |t|
    t.string "mail"
    t.integer "user_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id_id"], name: "index_emails_on_user_id_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id_id"
    t.integer "project_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id_id"], name: "index_favorites_on_project_id_id"
    t.index ["user_id_id"], name: "index_favorites_on_user_id_id"
  end

  create_table "funds", force: :cascade do |t|
    t.integer "user_id_id"
    t.integer "project_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id_id"], name: "index_funds_on_project_id_id"
    t.index ["user_id_id"], name: "index_funds_on_user_id_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string "number"
    t.integer "user_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id_id"], name: "index_phones_on_user_id_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.string "description"
    t.integer "goal"
    t.integer "actual"
    t.date "date_limit"
    t.integer "funders"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "promises", force: :cascade do |t|
    t.integer "project_id"
    t.string "description"
    t.integer "min"
    t.date "delivery_date"
    t.integer "buyers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_promises_on_project_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "user_id_id"
    t.integer "promise_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["promise_id_id"], name: "index_purchases_on_promise_id_id"
    t.index ["user_id_id"], name: "index_purchases_on_user_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "name"
    t.string "description"
    t.date "last_session"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "webs", force: :cascade do |t|
    t.string "url"
    t.integer "user_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id_id"], name: "index_webs_on_user_id_id"
  end

end
