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

ActiveRecord::Schema.define(version: 2018_06_20_204114) do

  create_table "items", primary_key: "part", id: :string, force: :cascade do |t|
    t.string "description"
    t.string "shape"
    t.string "color"
    t.string "coating"
    t.string "mfg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part"], name: "sqlite_autoindex_items_1", unique: true
  end

  create_table "jobs", force: :cascade do |t|
    t.string "wv"
    t.integer "line"
    t.string "part_id"
    t.date "coat_date"
    t.time "coat_time"
    t.integer "lot_quantity"
    t.integer "test_quantity"
    t.integer "bin"
    t.string "mfg_int"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "relative_humidity"
    t.string "illuminate"
    t.string "visual_inspection"
    t.boolean "visual_inspection_assess"
    t.string "dimensions"
    t.boolean "dimensions_assess"
    t.string "markings"
    t.boolean "markings_assess"
    t.string "adhesion"
    t.boolean "adhesion_assess"
    t.string "fit"
    t.boolean "fit_assess"
    t.float "ballistic_v50"
    t.boolean "ballistic_assess"
    t.string "ballistic_method_1"
    t.integer "ballistic_samples_1"
    t.integer "ballistic_fractures_1"
    t.integer "ballistic_spalls_1"
    t.string "ballistic_method_2"
    t.integer "ballistic_samples_2"
    t.integer "ballistic_fractures_2"
    t.integer "ballistic_spalls_2"
    t.float "vlt_1"
    t.float "neutrality_1"
    t.text "chromaticity_1", default: "--- []\n"
    t.float "uv_1"
    t.text "od_1", default: "--- []\n"
    t.float "haze_initial_1"
    t.float "haze_abraded_1"
    t.float "haze_gain_1"
    t.integer "resolving_1"
    t.float "refractive_1"
    t.float "astigmatism_1"
    t.float "horizontal_prism_1"
    t.float "vertical_prism_1"
    t.float "horizontal_imbalance_1"
    t.float "vertical_imbalance_1"
    t.float "vlt_2"
    t.float "neutrality_2"
    t.text "chromaticity_2", default: "--- []\n"
    t.float "uv_2"
    t.text "od_2", default: "--- []\n"
    t.float "haze_initial_2"
    t.float "haze_abraded_2"
    t.float "haze_gain_2"
    t.integer "resolving_2"
    t.float "refractive_2"
    t.float "astigmatism_2"
    t.float "horizontal_prism_2"
    t.float "vertical_prism_2"
    t.float "horizontal_imbalance_2"
    t.float "vertical_imbalance_2"
    t.float "vlt_3"
    t.float "neutrality_3"
    t.text "chromaticity_3", default: "--- []\n"
    t.float "uv_3"
    t.text "od_3", default: "--- []\n"
    t.float "haze_initial_3"
    t.float "haze_abraded_3"
    t.float "haze_gain_3"
    t.integer "resolving_3"
    t.float "refractive_3"
    t.float "astigmatism_3"
    t.float "horizontal_prism_3"
    t.float "vertical_prism_3"
    t.float "horizontal_imbalance_3"
    t.float "vertical_imbalance_3"
    t.float "vlt_4"
    t.float "neutrality_4"
    t.text "chromaticity_4", default: "--- []\n"
    t.float "uv_4"
    t.text "od_4", default: "--- []\n"
    t.float "haze_initial_4"
    t.float "haze_abraded_4"
    t.float "haze_gain_4"
    t.integer "resolving_4"
    t.float "refractive_4"
    t.float "astigmatism_4"
    t.float "horizontal_prism_4"
    t.float "vertical_prism_4"
    t.float "horizontal_imbalance_4"
    t.float "vertical_imbalance_4"
    t.float "vlt_5"
    t.float "neutrality_5"
    t.text "chromaticity_5", default: "--- []\n"
    t.float "uv_5"
    t.text "od_5", default: "--- []\n"
    t.float "haze_initial_5"
    t.float "haze_abraded_5"
    t.float "haze_gain_5"
    t.integer "resolving_5"
    t.float "refractive_5"
    t.float "astigmatism_5"
    t.float "horizontal_prism_5"
    t.float "vertical_prism_5"
    t.float "horizontal_imbalance_5"
    t.float "vertical_imbalance_5"
    t.float "vlt_6"
    t.float "neutrality_6"
    t.text "chromaticity_6", default: "--- []\n"
    t.float "uv_6"
    t.text "od_6", default: "--- []\n"
    t.float "haze_initial_6"
    t.float "haze_abraded_6"
    t.float "haze_gain_6"
    t.integer "resolving_6"
    t.float "refractive_6"
    t.float "astigmatism_6"
    t.float "horizontal_prism_6"
    t.float "vertical_prism_6"
    t.float "horizontal_imbalance_6"
    t.float "vertical_imbalance_6"
    t.float "antifog_time1"
    t.float "antifog_thickness_1"
    t.float "hard_thickness_1"
    t.float "en_abrasion_1"
    t.float "antifog_time2"
    t.float "antifog_thickness_2"
    t.float "hard_thickness_2"
    t.float "en_abrasion_2"
    t.float "antifog_time3"
    t.float "antifog_thickness_3"
    t.float "hard_thickness_3"
    t.float "en_abrasion_3"
    t.float "antifog_time4"
    t.float "antifog_thickness_4"
    t.float "hard_thickness_4"
    t.float "en_abrasion_4"
    t.float "antifog_time5"
    t.float "antifog_thickness_5"
    t.float "hard_thickness_5"
    t.float "en_abrasion_5"
    t.float "antifog_time6"
    t.float "antifog_thickness_6"
    t.float "hard_thickness_6"
    t.float "en_abrasion_6"
    t.float "antifog_time7"
    t.float "antifog_thickness_7"
    t.float "hard_thickness_7"
    t.float "en_abrasion_7"
    t.float "antifog_time8"
    t.float "antifog_thickness_8"
    t.float "hard_thickness_8"
    t.float "en_abrasion_8"
    t.float "dol_1"
    t.float "dol_2"
    t.float "dol_3"
    t.float "dol_4"
    t.float "dol_5"
    t.float "dol_6"
    t.float "dol_7"
    t.float "dol_8"
    t.float "dol_9"
    t.float "dol_10"
    t.float "dol_11"
    t.float "dol_12"
    t.float "dol_13"
    t.float "dol_14"
    t.float "dol_15"
    t.float "dol_16"
    t.float "dol_17"
    t.float "dol_18"
    t.float "dol_19"
    t.float "dol_20"
    t.boolean "job_assess"
    t.text "job_notes"
    t.string "qc_inital"
  end

  create_table "parts", force: :cascade do |t|
    t.string "part"
    t.string "description"
    t.string "shape"
    t.string "color"
    t.string "coating"
    t.string "mfg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string "part_id"
    t.string "test_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
