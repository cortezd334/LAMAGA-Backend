# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_18_171035) do

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.string "party"
    t.string "age"
    t.integer "user_id", null: false
    t.integer "state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_candidates_on_state_id"
    t.index ["user_id"], name: "index_candidates_on_user_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "current_representative"
    t.string "current_senator"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "address"
    t.integer "age"
    t.string "party"
    t.boolean "registered"
    t.string "poll_location"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "votes", force: :cascade do |t|
    t.string "name"
    t.string "party"
    t.string "candidateUrl"
    t.integer "user_id", null: false
    t.integer "candidates_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["candidates_id"], name: "index_votes_on_candidates_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

  add_foreign_key "candidates", "states"
  add_foreign_key "candidates", "users"
  add_foreign_key "votes", "candidates", column: "candidates_id"
  add_foreign_key "votes", "users"
end
