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

ActiveRecord::Schema.define(version: 2021_04_19_200849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "years_of_experience"
    t.string "reason_for_training"
    t.string "ethnicity"
    t.string "body_type"
    t.string "skill_level"
    t.integer "weight_in_lbs"
    t.integer "height_in_inches"
    t.boolean "preexisting_injuries"
    t.string "username"
    t.string "password"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "attempts", force: :cascade do |t|
    t.integer "challenge_id"
    t.integer "athlete_id"
    t.string "user_description_of_attempt"
    t.integer "max_weight"
    t.integer "goal_time_achieved"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "proof"
    t.integer "receiver_id"
    t.integer "reps"
  end

  create_table "challenges", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "min_reps"
    t.integer "min_weight"
    t.string "skill_level"
    t.integer "min_time"
    t.integer "max_time"
    t.string "muscle_group"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "private_trash_talks", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.integer "conversation_id"
    t.integer "challenge_id"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trash_talks", force: :cascade do |t|
    t.integer "athlete_id"
    t.integer "challenge_id"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "receiver_id"
  end

end
