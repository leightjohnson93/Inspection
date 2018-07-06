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

ActiveRecord::Schema.define(version: 2018_07_06_144341) do

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
    t.float "chromaticity_x_1"
    t.float "uv_1"
    t.float "haze_initial_1"
    t.float "haze_abraded_1"
    t.float "haze_gain_1"
    t.integer "resolving_left_1"
    t.float "refractive_left_1"
    t.float "astigmatism_left_1"
    t.float "horizontal_left_1"
    t.float "vertical_left_1"
    t.float "horizontal_imbalance_1"
    t.float "vertical_imbalance_1"
    t.float "vlt_2"
    t.float "neutrality_2"
    t.float "chromaticity_x_2"
    t.float "uv_2"
    t.float "haze_initial_2"
    t.float "haze_abraded_2"
    t.float "haze_gain_2"
    t.integer "resolving_left_2"
    t.float "refractive_left_2"
    t.float "astigmatism_left_2"
    t.float "horizontal_left_2"
    t.float "vertical_left_2"
    t.float "horizontal_imbalance_2"
    t.float "vertical_imbalance_2"
    t.float "vlt_3"
    t.float "neutrality_3"
    t.float "chromaticity_x_3"
    t.float "uv_3"
    t.float "haze_initial_3"
    t.float "haze_abraded_3"
    t.float "haze_gain_3"
    t.integer "resolving_left_3"
    t.float "refractive_left_3"
    t.float "astigmatism_left_3"
    t.float "horizontal_left_3"
    t.float "vertical_left_3"
    t.float "horizontal_imbalance_3"
    t.float "vertical_imbalance_3"
    t.float "vlt_4"
    t.float "neutrality_4"
    t.float "chromaticity_x_4"
    t.float "uv_4"
    t.float "haze_initial_4"
    t.float "haze_abraded_4"
    t.float "haze_gain_4"
    t.integer "resolving_left_4"
    t.float "refractive_left_4"
    t.float "astigmatism_left_4"
    t.float "horizontal_left_4"
    t.float "vertical_left_4"
    t.float "horizontal_imbalance_4"
    t.float "vertical_imbalance_4"
    t.float "vlt_5"
    t.float "neutrality_5"
    t.float "chromaticity_x_5"
    t.float "uv_5"
    t.float "haze_initial_5"
    t.float "haze_abraded_5"
    t.float "haze_gain_5"
    t.integer "resolving_left_5"
    t.float "refractive_left_5"
    t.float "astigmatism_left_5"
    t.float "horizontal_left_5"
    t.float "vertical_left_5"
    t.float "horizontal_imbalance_5"
    t.float "vertical_imbalance_5"
    t.float "vlt_6"
    t.float "neutrality_6"
    t.float "chromaticity_x_6"
    t.float "uv_6"
    t.float "haze_initial_6"
    t.float "haze_abraded_6"
    t.float "haze_gain_6"
    t.integer "resolving_left_6"
    t.float "refractive_left_6"
    t.float "astigmatism_left_6"
    t.float "horizontal_left_6"
    t.float "vertical_left_6"
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
    t.float "chromaticity_y_1"
    t.integer "resolving_right_1"
    t.float "refractive_right_1"
    t.float "astigmatism_right_1"
    t.float "horizontal_right_1"
    t.float "vertical_right_1"
    t.float "chromaticity_y_2"
    t.integer "resolving_right_2"
    t.float "refractive_right_2"
    t.float "astigmatism_right_2"
    t.float "horizontal_right_2"
    t.float "vertical_right_2"
    t.float "chromaticity_y_3"
    t.integer "resolving_right_3"
    t.float "refractive_right_3"
    t.float "astigmatism_right_3"
    t.float "horizontal_right_3"
    t.float "vertical_right_3"
    t.float "chromaticity_y_4"
    t.integer "resolving_right_4"
    t.float "refractive_right_4"
    t.float "astigmatism_right_4"
    t.float "horizontal_right_4"
    t.float "vertical_right_4"
    t.float "chromaticity_y_5"
    t.integer "resolving_right_5"
    t.float "refractive_right_5"
    t.float "astigmatism_right_5"
    t.float "horizontal_right_5"
    t.float "vertical_right_5"
    t.float "chromaticity_y_6"
    t.integer "resolving_right_6"
    t.float "refractive_right_6"
    t.float "astigmatism_right_6"
    t.float "horizontal_right_6"
    t.float "vertical_right_6"
    t.string "nm_1"
    t.string "nm_2"
    t.string "qc_int"
    t.boolean "lot_assess"
    t.boolean "lot_complete"
    t.integer "mrr_id"
    t.integer "receiver"
    t.float "od_1_nm_1"
    t.float "od_1_nm_2"
    t.float "od_2_nm_1"
    t.float "od_2_nm_2"
    t.float "od_3_nm_1"
    t.float "od_3_nm_2"
    t.float "od_4_nm_1"
    t.float "od_4_nm_2"
    t.float "od_5_nm_1"
    t.float "od_5_nm_2"
    t.float "od_6_nm_1"
    t.float "od_6_nm_2"
    t.decimal "annular_machine_initial"
    t.decimal "circular_machine_initial"
    t.decimal "annular_machine_final"
    t.decimal "circular_machine_final"
    t.decimal "reading_initial_1", default: "0.0004"
    t.decimal "reading_initial_2", default: "0.003"
    t.decimal "reading_initial_3", default: "0.03"
    t.decimal "reading_initial_4", default: "0.3"
    t.decimal "reading_initial_5", default: "3.0"
    t.decimal "reading_final_1", default: "0.0004"
    t.decimal "reading_final_2", default: "0.003"
    t.decimal "reading_final_3", default: "0.03"
    t.decimal "reading_final_4", default: "0.3"
    t.decimal "reading_final_5", default: "3.0"
    t.decimal "annular_initial_1"
    t.decimal "circular_initial_1"
    t.decimal "annular_initial_2"
    t.decimal "circular_initial_2"
    t.decimal "annular_initial_3"
    t.decimal "circular_initial_3"
    t.decimal "annular_initial_4"
    t.decimal "circular_initial_4"
    t.decimal "annular_initial_5"
    t.decimal "circular_initial_5"
    t.decimal "annular_initial_6"
    t.decimal "circular_initial_6"
    t.decimal "annular_initial_7"
    t.decimal "circular_initial_7"
    t.decimal "annular_initial_8"
    t.decimal "circular_initial_8"
    t.decimal "annular_initial_9"
    t.decimal "circular_initial_9"
    t.decimal "annular_initial_10"
    t.decimal "circular_initial_10"
    t.decimal "annular_initial_11"
    t.decimal "circular_initial_11"
    t.decimal "annular_initial_12"
    t.decimal "circular_initial_12"
    t.decimal "annular_sample_1"
    t.decimal "circular_sample_1"
    t.decimal "annular_sample_2"
    t.decimal "circular_sample_2"
    t.decimal "annular_sample_3"
    t.decimal "circular_sample_3"
    t.decimal "annular_sample_4"
    t.decimal "circular_sample_4"
    t.decimal "annular_sample_5"
    t.decimal "circular_sample_5"
    t.decimal "annular_sample_6"
    t.decimal "circular_sample_6"
    t.decimal "annular_sample_7"
    t.decimal "circular_sample_7"
    t.decimal "annular_sample_8"
    t.decimal "circular_sample_8"
    t.decimal "annular_glass_1"
    t.decimal "annular_pmma_1"
    t.decimal "circular_glass_1"
    t.decimal "circular_pmma_1"
    t.decimal "annular_glass_2"
    t.decimal "annular_pmma_2"
    t.decimal "circular_glass_2"
    t.decimal "circular_pmma_2"
    t.decimal "annular_glass_3"
    t.decimal "annular_pmma_3"
    t.decimal "circular_glass_3"
    t.decimal "circular_pmma_3"
    t.decimal "annular_glass_4"
    t.decimal "annular_pmma_4"
    t.decimal "circular_glass_4"
    t.decimal "circular_pmma_4"
  end

end
