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

ActiveRecord::Schema.define(version: 2022_03_08_155242) do

  create_table "games", force: :cascade do |t|
    t.string "game_name"
    t.string "genre"
    t.string "platforms"
    t.string "game_image"
    t.boolean "crossplay"
  end

  create_table "squads", force: :cascade do |t|
    t.string "squad_name"
    t.string "availability"
    t.string "squad_img"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "game_id"
    t.string "members"
  end

end
