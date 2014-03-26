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

ActiveRecord::Schema.define(version: 20140326160553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.string   "account_username"
    t.string   "child_name"
    t.integer  "has_completed"
    t.datetime "start"
    t.datetime "end"
    t.string   "core_skill"
    t.string   "session_identifier"
    t.string   "scene"
    t.integer  "set_num"
    t.integer  "section_id"
    t.integer  "num_answers"
    t.string   "phoneme_ids"
    t.string   "incorrect_phoneme_ids"
    t.string   "word_ids"
    t.string   "incorrect_word_ids"
    t.integer  "story_id"
    t.string   "pip_pad_calls"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "glossaryterms", force: true do |t|
    t.string   "term"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "learninggames", force: true do |t|
    t.string   "name"
    t.string   "skillstring"
    t.string   "learningobjective"
    t.text     "instructions"
    t.text     "resources"
    t.text     "extension"
    t.text     "video"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stage_id"
    t.integer  "skill_id"
    t.integer  "emptycolumn"
  end

  create_table "learninggames_stages", id: false, force: true do |t|
    t.integer "learninggame_id"
    t.integer "stage_id"
  end

  add_index "learninggames_stages", ["learninggame_id"], name: "index_learninggames_stages_on_learninggame_id", using: :btree
  add_index "learninggames_stages", ["stage_id"], name: "index_learninggames_stages_on_stage_id", using: :btree

  create_table "learningsessions", force: true do |t|
    t.string   "account_username"
    t.string   "child_name"
    t.integer  "has_completed"
    t.datetime "start"
    t.datetime "end"
    t.string   "session_identifier"
    t.string   "session_name"
    t.integer  "session_id"
    t.integer  "session_number"
    t.string   "session_type"
    t.string   "scenes"
    t.string   "phoneme_ids"
    t.integer  "target_phoneme_id"
    t.string   "word_ids"
    t.integer  "target_word_id"
    t.string   "keyword_ids"
    t.integer  "target_keyword_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phonemes", force: true do |t|
    t.string   "phoneme"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "imagepossible"
    t.string   "mneumonic"
    t.boolean  "completed"
    t.string   "mneumonic_two"
    t.string   "grapheme"
    t.integer  "setnumber"
    t.integer  "phonemeorder"
  end

  create_table "products", force: true do |t|
    t.string   "price"
    t.string   "link"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "video"
    t.boolean  "comingsoon"
  end

  create_table "products_stages", id: false, force: true do |t|
    t.integer "product_id"
    t.integer "stage_id"
  end

  add_index "products_stages", ["product_id"], name: "index_products_stages_on_product_id", using: :btree
  add_index "products_stages", ["stage_id"], name: "index_products_stages_on_stage_id", using: :btree

  create_table "skills", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "video"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stage_id"
  end

  create_table "stages", force: true do |t|
    t.integer  "number"
    t.string   "age"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "video"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "second_name"
    t.string   "authenticationcode"
    t.boolean  "payment_received",       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "school"
    t.string   "postcode"
    t.string   "yeargroup"
    t.string   "website"
    t.string   "account_username"
    t.text     "child_usernames"
    t.string   "ip_address"
    t.string   "platform"
    t.string   "user_type"
    t.string   "school_address"
    t.string   "country"
    t.boolean  "invite_received"
    t.boolean  "program_requested"
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
