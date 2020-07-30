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

ActiveRecord::Schema.define(version: 2020_07_30_223406) do

  create_table "episodes", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "opening_crawl"
    t.string "image_url"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "dob"
    t.string "gender"
    t.string "skin_color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "url_people"
    t.string "person_image_url"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "terrain"
    t.float "population"
    t.integer "diameter"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "url_planet"
    t.string "planet_img"
  end

  create_table "ppepisodes", force: :cascade do |t|
    t.integer "episode_id"
    t.integer "person_id"
    t.integer "planet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
