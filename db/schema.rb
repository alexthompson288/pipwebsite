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

ActiveRecord::Schema.define(version: 20140515174519) do

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

  create_table "data_phonemes", force: true do |t|
    t.integer  "section_id"
    t.integer  "phoneme_id"
    t.boolean  "is_target_phoneme"
    t.boolean  "is_dummy_phoneme"
    t.integer  "programsession_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_words", force: true do |t|
    t.integer  "section_id"
    t.integer  "word_id"
    t.boolean  "is_target_word"
    t.boolean  "is_dummy_word"
    t.integer  "programsession_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "datasentences", force: true do |t|
    t.text     "question"
    t.string   "correctanswer"
    t.string   "dummyanswer1"
    t.string   "dummyanswer2"
    t.string   "good_sentence"
    t.string   "bad_sentence1"
    t.string   "bad_sentence2"
    t.string   "bad_sentence3"
    t.integer  "pipisode_id"
    t.integer  "programsession_id"
    t.integer  "story_id"
    t.integer  "programmodule_id"
    t.string   "correct_image_name"
    t.string   "correct_image_url"
    t.string   "dummy_image1_name"
    t.string   "dummy_image1_url"
    t.string   "dummy_image2_name"
    t.string   "dummy_image2_url"
    t.boolean  "correctsentence"
    t.boolean  "correctword"
    t.boolean  "correctimage"
    t.boolean  "quiz"
    t.text     "question_french"
    t.text     "question_spanish"
    t.text     "question_mandarin"
    t.string   "correct_answer_french"
    t.string   "dummyanswer1_french"
    t.string   "dummyanswer2_french"
    t.string   "correct_answer_spanish"
    t.string   "dummyanswer1_spanish"
    t.string   "dummyanswer2_spanish"
    t.string   "correct_answer_mandarin"
    t.string   "dummyanswer1_mandarin"
    t.string   "dummyanswer2_mandarin"
    t.string   "good_sentence_french"
    t.string   "bad_sentence1_french"
    t.string   "bad_sentence2_french"
    t.string   "bad_sentence3_french"
    t.string   "good_sentence_spanish"
    t.string   "bad_sentence1_spanish"
    t.string   "bad_sentence2_spanish"
    t.string   "bad_sentence3_spanish"
    t.string   "good_sentence_mandarin"
    t.string   "bad_sentence1_mandarin"
    t.string   "bad_sentenece2_mandarin"
    t.string   "bad_sentence3_mandarin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.string   "name"
    t.string   "gametype"
    t.text     "description"
    t.string   "skill"
    t.text     "overview"
    t.boolean  "multiplayer"
    t.string   "labeltext"
    t.boolean  "picture_game"
    t.boolean  "label_game"
    t.integer  "cms_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "glossaryterms", force: true do |t|
    t.string   "term"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "importantvocabs", force: true do |t|
    t.integer  "pipisode_id"
    t.integer  "story_id"
    t.integer  "word_id"
    t.integer  "sentence_id"
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

  create_table "models", force: true do |t|
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

  add_index "models", ["email"], name: "index_models_on_email", unique: true, using: :btree
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true, using: :btree

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
    t.integer  "cms_id"
  end

  create_table "pipisodes", force: true do |t|
    t.string   "video_filename"
    t.string   "image_filename"
    t.integer  "order_number"
    t.boolean  "interactive_video"
    t.text     "pipisode_overview"
    t.integer  "programmodule_id"
    t.integer  "phonicsset_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pipisode_title"
    t.string   "label_text"
    t.boolean  "publishable"
    t.text     "transcript_english"
    t.text     "transcript_french"
    t.text     "transcript_spanish"
    t.text     "transcript_mandarin"
    t.text     "pipisode_overview_french"
    t.text     "pipisode_overview_spanish"
    t.text     "pipisode_overview_mandarin"
    t.string   "pipisode_title_french"
    t.string   "pipisode_title_spanish"
    t.string   "pipisode_title_mandarin"
    t.string   "video_filename_french"
    t.string   "video_filename_spanish"
    t.string   "video_filename_mandarin"
    t.text     "extra_activities"
    t.text     "extra_activities_french"
    t.text     "extra_activities_spanish"
    t.text     "extra_activities_mandarin"
    t.integer  "cms_id"
  end

  create_table "pipusers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "account_username"
    t.string   "ip_address"
    t.string   "country"
    t.string   "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  add_index "pipusers", ["email"], name: "index_pipusers_on_email", unique: true, using: :btree
  add_index "pipusers", ["reset_password_token"], name: "index_pipusers_on_reset_password_token", unique: true, using: :btree

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "video_url"
    t.string   "image_url"
    t.text     "body_text"
    t.string   "posttype"
    t.boolean  "subject_reading"
    t.boolean  "subject_maths"
    t.boolean  "subject_world"
    t.boolean  "subject_english"
    t.integer  "priority_level"
    t.boolean  "lilac"
    t.boolean  "pink"
    t.boolean  "red"
    t.boolean  "yellow"
    t.boolean  "blue"
    t.boolean  "green"
    t.boolean  "orange"
    t.string   "linklabel"
    t.boolean  "publishable"
    t.integer  "order_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "iphone"
    t.string   "ipad"
    t.string   "android"
    t.string   "mac"
    t.string   "pc"
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

  create_table "programmodules", force: true do |t|
    t.integer  "number"
    t.string   "colour"
    t.string   "phaselevel"
    t.string   "programmename"
    t.integer  "cms_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programsessions", force: true do |t|
    t.integer  "number"
    t.string   "learningobjective"
    t.integer  "programmodule_id"
    t.integer  "story_id"
    t.integer  "pipisode_id"
    t.boolean  "learningvoyagebool"
    t.integer  "target_number"
    t.integer  "highest_number"
    t.integer  "cms_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quizquestions", force: true do |t|
    t.text     "question"
    t.string   "correctanswer"
    t.string   "dummyanswer1"
    t.string   "dummyanswer2"
    t.integer  "pipisode_id"
    t.integer  "programsession_id"
    t.integer  "story_id"
    t.integer  "porgrammodule_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "question_french"
    t.text     "question_spanish"
    t.text     "question_mandarin"
    t.string   "correct_answer_french"
    t.string   "correct_answer_spanish"
    t.string   "correct_answer_mandarin"
    t.string   "dummyanswer1_french"
    t.string   "dummyanswer1_spanish"
    t.string   "dummyanswer1_mandarin"
    t.string   "dummyanswer2_french"
    t.string   "dummyanswer2_spanish"
    t.string   "dummyanswer2_mandarin"
  end

  create_table "sections", force: true do |t|
    t.string   "sectiontype"
    t.integer  "programsession_id"
    t.integer  "game_id"
    t.integer  "number"
    t.integer  "programmodule_id"
    t.integer  "cms_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sentences", force: true do |t|
    t.string   "text"
    t.string   "linking_index"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_target_sentence"
    t.boolean  "is_dummy_sentence"
    t.string   "gametype"
    t.integer  "programsession_id"
    t.string   "text_french"
    t.string   "text_spanish"
    t.string   "text_mandarin"
    t.integer  "cms_id"
  end

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
    t.string   "colour"
    t.string   "test_url"
  end

  create_table "stories", force: true do |t|
    t.string   "title"
    t.string   "storycoverartwork"
    t.integer  "storyset_id"
    t.integer  "programmodule_id"
    t.string   "author"
    t.text     "description"
    t.string   "storytype"
    t.boolean  "publishable"
    t.string   "title_french"
    t.string   "title_spanish"
    t.string   "title_mandarin"
    t.text     "description_french"
    t.text     "description_spanish"
    t.text     "description_mandarin"
    t.text     "extra_activities"
    t.text     "extra_activities_french"
    t.text     "extra_activities_spanish"
    t.text     "extra_activities_mandarin"
    t.integer  "cms_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "storypages", force: true do |t|
    t.integer  "story_id"
    t.text     "text"
    t.string   "image"
    t.string   "audio"
    t.integer  "pageorder"
    t.text     "frenchtext"
    t.text     "spanishtext"
    t.text     "mandarintext"
    t.text     "germantext"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "words", force: true do |t|
    t.string   "word"
    t.string   "startingletter"
    t.boolean  "cvc"
    t.boolean  "ccvc"
    t.boolean  "diagraph"
    t.boolean  "splitdiagraph"
    t.integer  "numsyllables"
    t.integer  "numletters"
    t.integer  "numphonemes"
    t.string   "image"
    t.boolean  "nonsense"
    t.integer  "entrypointmodule"
    t.integer  "entrypointunit"
    t.integer  "entrypoint_session"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.boolean  "highfrequencyword"
    t.boolean  "cvcc"
    t.boolean  "imagepossible"
    t.boolean  "imagerequired"
    t.boolean  "completed"
    t.boolean  "tricky"
    t.text     "ordered_phonemes"
    t.text     "dummyorderedphonemes"
    t.string   "frenchword"
    t.string   "spanishword"
    t.string   "mandarinword"
    t.string   "germanword"
    t.integer  "cms_id"
  end

end
