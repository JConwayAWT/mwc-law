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

ActiveRecord::Schema.define(version: 2021_04_06_151553) do

  create_table "alerts", force: :cascade do |t|
    t.text "body"
    t.integer "hours_to_live"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "applications", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bubbles", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employment_applications", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "email", limit: 255
    t.text "message"
    t.string "office_location", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "resume_file_name", limit: 255
    t.string "resume_content_type", limit: 255
    t.integer "resume_file_size"
    t.datetime "resume_updated_at"
  end

  create_table "mwc_laws", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sale_lists", force: :cascade do |t|
    t.text "mwc_html"
    t.string "mwc_file_name", limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
