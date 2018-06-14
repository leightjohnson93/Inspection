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

ActiveRecord::Schema.define(version: 2018_06_14_131515) do

  create_table "jobs", force: :cascade do |t|
    t.string "wv"
    t.integer "line"
    t.string "part"
    t.date "coat_date"
    t.time "coat_time"
    t.integer "lot_quanity"
    t.integer "test_quantity"
    t.integer "bin"
    t.string "mfg_int"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.string "lot_quantity"
  end

end
