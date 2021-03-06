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

ActiveRecord::Schema.define(version: 2018_11_28_144319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answer_users", force: :cascade do |t|
    t.bigint "answer_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_answer_users_on_answer_id"
    t.index ["user_id"], name: "index_answer_users_on_user_id"
  end

  create_table "answers", force: :cascade do |t|
    t.boolean "correct"
    t.string "answer"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "bookmarks", force: :cascade do |t|
    t.bigint "video_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "checked", default: false
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
    t.index ["video_id"], name: "index_bookmarks_on_video_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "video_id"
    t.integer "opponent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_challenges_on_user_id"
    t.index ["video_id"], name: "index_challenges_on_video_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.bigint "video_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["video_id"], name: "index_questions_on_video_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "score", default: 0
    t.boolean "subscribed", default: false, null: false
    t.string "photo"
    t.string "provider"
    t.string "uid"
    t.string "facebook_picture_url"
    t.string "first_name"
    t.string "last_name"
    t.string "token"
    t.datetime "token_expiry"
    t.string "plan_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.integer "difficulty"
    t.string "category"
    t.text "transcript"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "region"
  end

  add_foreign_key "answer_users", "answers"
  add_foreign_key "answer_users", "users"
  add_foreign_key "answers", "questions"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "bookmarks", "videos"
  add_foreign_key "challenges", "users"
  add_foreign_key "challenges", "videos"
  add_foreign_key "questions", "videos"
end
