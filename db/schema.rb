# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_14_142735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "backgrounds", force: :cascade do |t|
    t.string "skills", default: [], array: true
    t.text "desc"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "characters", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.integer "level"
    t.integer "armorclass"
    t.integer "speed"
    t.string "subclass"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.integer "hp_current"
    t.integer "hp_max"
    t.string "weapons", default: [], array: true
    t.string "spells", default: [], array: true
    t.string "equipment", default: [], array: true
    t.string "background"
    t.string "race"
    t.string "subrace"
    t.integer "gold"
    t.text "ideals"
    t.text "flaws"
    t.text "bonds"
    t.text "personality"
    t.string "features", default: [], array: true
    t.string "languages", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "character_class"
    t.string "traits", default: [], array: true
    t.string "cantrips", default: [], array: true
    t.string "skills", default: [], array: true
    t.string "spellcasting_ability"
    t.string "alignment"
    t.string "proficiencies", default: [], array: true
    t.integer "hit_die"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "proficiency_lists", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.boolean "strength"
    t.boolean "dexterity"
    t.boolean "constitution"
    t.boolean "intelligence"
    t.boolean "charisma"
    t.boolean "acrobatics"
    t.boolean "animal_handling"
    t.boolean "arcana"
    t.boolean "athletics"
    t.boolean "deception"
    t.boolean "history"
    t.boolean "insight"
    t.boolean "intimidation"
    t.boolean "investigation"
    t.boolean "medicine"
    t.boolean "nature"
    t.boolean "perception"
    t.boolean "performance"
    t.boolean "persuasion"
    t.boolean "religion"
    t.boolean "sleight_of_hand"
    t.boolean "stealth"
    t.boolean "survival"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "wisdom"
    t.index ["character_id"], name: "index_proficiency_lists_on_character_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "characters", "users"
  add_foreign_key "proficiency_lists", "characters"
end
