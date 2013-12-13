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

ActiveRecord::Schema.define(version: 20131212150814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characterreactions_gameinstances", id: false, force: true do |t|
    t.integer "characterreaction_id"
    t.integer "gameinstance_id"
  end

  add_index "characterreactions_gameinstances", ["characterreaction_id"], name: "index_characterreactions_gameinstances_on_characterreaction_id", using: :btree
  add_index "characterreactions_gameinstances", ["gameinstance_id"], name: "index_characterreactions_gameinstances_on_gameinstance_id", using: :btree

  create_table "characterreactions_games", id: false, force: true do |t|
    t.integer "characterreaction_id"
    t.integer "game_id"
  end

  add_index "characterreactions_games", ["characterreaction_id"], name: "index_characterreactions_games_on_characterreaction_id", using: :btree
  add_index "characterreactions_games", ["game_id"], name: "index_characterreactions_games_on_game_id", using: :btree

  create_table "characterreactions_sections", id: false, force: true do |t|
    t.integer "characterreaction_id"
    t.integer "section_id"
  end

  add_index "characterreactions_sections", ["characterreaction_id"], name: "index_characterreactions_sections_on_characterreaction_id", using: :btree
  add_index "characterreactions_sections", ["section_id"], name: "index_characterreactions_sections_on_section_id", using: :btree

  create_table "characters", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "completed"
  end

  create_table "characters_gameinstances", id: false, force: true do |t|
    t.integer "character_id"
    t.integer "gameinstance_id"
  end

  add_index "characters_gameinstances", ["character_id"], name: "index_characters_gameinstances_on_character_id", using: :btree
  add_index "characters_gameinstances", ["gameinstance_id"], name: "index_characters_gameinstances_on_gameinstance_id", using: :btree

  create_table "characters_games", id: false, force: true do |t|
    t.integer "character_id"
    t.integer "game_id"
  end

  add_index "characters_games", ["character_id"], name: "index_characters_games_on_character_id", using: :btree
  add_index "characters_games", ["game_id"], name: "index_characters_games_on_game_id", using: :btree

  create_table "characters_sections", id: false, force: true do |t|
    t.integer "character_id"
    t.integer "section_id"
  end

  add_index "characters_sections", ["character_id"], name: "index_characters_sections_on_character_id", using: :btree
  add_index "characters_sections", ["section_id"], name: "index_characters_sections_on_section_id", using: :btree

  create_table "data_phonemes", force: true do |t|
    t.integer  "section_id"
    t.integer  "phoneme_id"
    t.boolean  "is_target_phoneme"
    t.boolean  "is_dummy_phoneme"
    t.integer  "linking_index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "data_phonemes", ["phoneme_id"], name: "index_data_phonemes_on_phoneme_id", using: :btree
  add_index "data_phonemes", ["section_id"], name: "index_data_phonemes_on_section_id", using: :btree

  create_table "data_words", force: true do |t|
    t.integer  "section_id"
    t.integer  "word_id"
    t.boolean  "is_target_word"
    t.boolean  "is_dummy_word"
    t.integer  "linking_index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "data_words", ["section_id"], name: "index_data_words_on_section_id", using: :btree
  add_index "data_words", ["word_id"], name: "index_data_words_on_word_id", using: :btree

  create_table "environments", force: true do |t|
    t.string   "name"
    t.text     "background"
    t.text     "foreground"
    t.string   "foregroundcontainer"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "setting_id"
    t.boolean  "completed"
  end

  create_table "gameinstances", force: true do |t|
    t.text     "description"
    t.string   "gameinstancetype"
    t.integer  "game_id"
    t.text     "environment"
    t.integer  "programmodule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content"
    t.integer  "environment_id"
    t.string   "gameprogresstype"
    t.integer  "setting_id"
  end

  create_table "gameinstances_sections", id: false, force: true do |t|
    t.integer "gameinstance_id"
    t.integer "section_id"
  end

  add_index "gameinstances_sections", ["gameinstance_id"], name: "index_gameinstances_sections_on_gameinstance_id", using: :btree
  add_index "gameinstances_sections", ["section_id"], name: "index_gameinstances_sections_on_section_id", using: :btree

  create_table "games", force: true do |t|
    t.string   "name"
    t.string   "gametype"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.text     "adaptivelearning"
    t.text     "notes"
    t.text     "aim"
    t.string   "skill"
    t.boolean  "revise"
    t.boolean  "learn"
    t.boolean  "apply"
    t.boolean  "practise"
    t.text     "environment"
    t.string   "weblink"
    t.text     "overview"
    t.boolean  "imagesrequired"
    t.boolean  "animationrequired"
    t.text     "tech"
    t.boolean  "multiplayer"
    t.boolean  "skillintro"
    t.boolean  "completed"
    t.string   "image"
  end

  create_table "games_programmodules", id: false, force: true do |t|
    t.integer "game_id"
    t.integer "programmodule_id"
  end

  add_index "games_programmodules", ["game_id"], name: "index_games_programmodules_on_game_id", using: :btree
  add_index "games_programmodules", ["programmodule_id"], name: "index_games_programmodules_on_programmodule_id", using: :btree

  create_table "games_sounds", id: false, force: true do |t|
    t.integer "game_id"
    t.integer "sound_id"
  end

  add_index "games_sounds", ["game_id"], name: "index_games_sounds_on_game_id", using: :btree
  add_index "games_sounds", ["sound_id"], name: "index_games_sounds_on_sound_id", using: :btree

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
  end

  create_table "phonemes_programsessions", id: false, force: true do |t|
    t.integer "phoneme_id"
    t.integer "programsession_id"
  end

  add_index "phonemes_programsessions", ["phoneme_id"], name: "index_phonemes_programsessions_on_phoneme_id", using: :btree
  add_index "phonemes_programsessions", ["programsession_id"], name: "index_phonemes_programsessions_on_programsession_id", using: :btree

  create_table "phonemes_sections", id: false, force: true do |t|
    t.integer "phoneme_id"
    t.integer "section_id"
  end

  add_index "phonemes_sections", ["phoneme_id"], name: "index_phonemes_sections_on_phoneme_id", using: :btree
  add_index "phonemes_sections", ["section_id"], name: "index_phonemes_sections_on_section_id", using: :btree

  create_table "phonemes_words", id: false, force: true do |t|
    t.integer "phoneme_id"
    t.integer "word_id"
  end

  add_index "phonemes_words", ["phoneme_id"], name: "index_phonemes_words_on_phoneme_id", using: :btree
  add_index "phonemes_words", ["word_id"], name: "index_phonemes_words_on_word_id", using: :btree

  create_table "programmodules", force: true do |t|
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "narrativeintro"
    t.text     "narrativeexit"
    t.text     "modulemission"
    t.string   "modulereward"
  end

  create_table "programsessions", force: true do |t|
    t.integer  "number"
    t.string   "learningobjective"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "programunit_id"
    t.text     "narrative"
    t.integer  "programmodule_id"
    t.boolean  "completed"
  end

  create_table "programunits", force: true do |t|
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "programmodule_id"
    t.string   "objective"
  end

  create_table "sections", force: true do |t|
    t.string   "sectiontype"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "programsession_id"
    t.integer  "environment_id"
    t.integer  "game_id"
    t.integer  "number"
    t.string   "gameprogresstype"
    t.text     "gameinstructions"
    t.text     "audiofx"
    t.integer  "programunit_id"
    t.integer  "programmodule_id"
    t.integer  "linking_index"
  end

  create_table "sections_words", id: false, force: true do |t|
    t.integer "section_id"
    t.integer "word_id"
  end

  add_index "sections_words", ["section_id"], name: "index_sections_words_on_section_id", using: :btree
  add_index "sections_words", ["word_id"], name: "index_sections_words_on_word_id", using: :btree

  create_table "sentences", force: true do |t|
    t.string   "text"
    t.string   "linking_index"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_target_sentence"
    t.boolean  "is_dummy_sentence"
    t.string   "gametype"
  end

  add_index "sentences", ["section_id"], name: "index_sentences_on_section_id", using: :btree

  create_table "settings", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "programmodule_id"
  end

  create_table "sounds", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "soundtype"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "character_id"
    t.integer  "setting_id"
    t.string   "overview"
    t.boolean  "completed"
    t.integer  "positionnumber"
  end

  create_table "stories", force: true do |t|
    t.string   "title"
    t.integer  "programunit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "storycoverartwork"
    t.integer  "storyset_id"
    t.string   "backgroundart"
    t.integer  "difficulty"
    t.string   "readingpadart"
    t.string   "author"
    t.text     "description"
    t.integer  "fontsize"
    t.string   "storytype"
    t.boolean  "publishable"
    t.integer  "section_id"
  end

  create_table "storypages", force: true do |t|
    t.integer  "story_id"
    t.text     "text"
    t.string   "image"
    t.string   "audio"
    t.integer  "pageorder"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "textposition"
    t.string   "backgroundart"
    t.text     "receptionwords"
    t.text     "yearonenwords"
    t.text     "frenchtext"
    t.text     "spanishtext"
    t.text     "mandarintext"
    t.text     "germantext"
    t.text     "nondecodablereceptionwords"
    t.text     "nondecodableyearonewords"
  end

  create_table "storysets", force: true do |t|
    t.string   "title"
    t.string   "bgimage"
    t.string   "font"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks_teammembers", id: false, force: true do |t|
    t.integer "task_id"
    t.integer "teammember_id"
  end

  add_index "tasks_teammembers", ["task_id"], name: "index_tasks_teammembers_on_task_id", using: :btree
  add_index "tasks_teammembers", ["teammember_id"], name: "index_tasks_teammembers_on_teammember_id", using: :btree

  create_table "themes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "themes_words", id: false, force: true do |t|
    t.integer "theme_id"
    t.integer "word_id"
  end

  add_index "themes_words", ["theme_id"], name: "index_themes_words_on_theme_id", using: :btree
  add_index "themes_words", ["word_id"], name: "index_themes_words_on_word_id", using: :btree

  create_table "tombleitems", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.boolean  "is_animated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "tricky"
    t.boolean  "cvcc"
    t.boolean  "imagepossible"
    t.boolean  "imagerequired"
    t.boolean  "completed"
    t.boolean  "nondecodable"
    t.text     "ordered_phonemes"
    t.boolean  "perfect"
    t.text     "dummyorderedphonemes"
    t.string   "frenchword"
    t.string   "spanishword"
    t.string   "mandarinword"
    t.string   "germanword"
  end

end
