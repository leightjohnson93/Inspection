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

ActiveRecord::Schema[7.0].define(version: 2018_08_31_132712) do
  create_table "items", primary_key: "part", id: :string, force: :cascade do |t|
    t.string "description"
    t.string "shape"
    t.string "color"
    t.string "coating"
    t.string "mfg"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "jobs", id: :string, force: :cascade do |t|
    t.string "wv"
    t.integer "line"
    t.string "part_id"
    t.date "coat_date"
    t.time "coat_time"
    t.integer "lot_quantity"
    t.integer "test_quantity"
    t.integer "bin"
    t.string "mfg_int"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
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
    t.boolean "ballistic_assess_1"
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
    t.string "lot_complete"
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
    t.decimal "annular_pmma_1"
    t.decimal "circular_pmma_1"
    t.decimal "annular_glass_2"
    t.decimal "circular_glass_2"
    t.decimal "annular_pmma_3"
    t.decimal "circular_pmma_3"
    t.decimal "annular_glass_4"
    t.decimal "circular_glass_4"
    t.decimal "annular_pmma_5"
    t.decimal "circular_pmma_5"
    t.decimal "annular_glass_6"
    t.decimal "circular_glass_6"
    t.decimal "annular_pmma_7"
    t.decimal "circular_pmma_7"
    t.decimal "annular_glass_8"
    t.decimal "circular_glass_8"
    t.float "prismatic_power_left_1"
    t.float "prismatic_power_right_1"
    t.float "prismatic_power_left_2"
    t.float "prismatic_power_right_2"
    t.float "prismatic_power_left_3"
    t.float "prismatic_power_right_3"
    t.float "prismatic_power_left_4"
    t.float "prismatic_power_right_4"
    t.float "prismatic_power_left_5"
    t.float "prismatic_power_right_5"
    t.float "prismatic_power_left_6"
    t.float "prismatic_power_right_6"
    t.string "sand"
    t.string "ballistic_method_3"
    t.string "ballistic_method_4"
    t.integer "ballistic_samples_3"
    t.integer "ballistic_samples_4"
    t.integer "ballistic_fractures_3"
    t.integer "ballistic_fractures_4"
    t.integer "ballistic_spalls_3"
    t.integer "ballistic_spalls_4"
    t.boolean "ballistic_assess_2"
    t.boolean "ballistic_assess_3"
    t.boolean "ballistic_assess_4"
    t.integer "ballistic_penetrations_1"
    t.float "ballistic_results_1"
    t.integer "ballistic_penetrations_2"
    t.float "ballistic_results_2"
    t.integer "ballistic_penetrations_3"
    t.float "ballistic_results_3"
    t.integer "ballistic_penetrations_4"
    t.float "ballistic_results_4"
    t.float "uv400_1"
    t.float "uv380_1"
    t.float "uv400_2"
    t.float "uv380_2"
    t.float "uv400_3"
    t.float "uv380_3"
    t.float "uv400_4"
    t.float "uv380_4"
    t.float "uv400_5"
    t.float "uv380_5"
    t.float "uv400_6"
    t.float "uv380_6"
    t.float "d65_photopic_1"
    t.float "d65_scotopic_1"
    t.float "p43_photopic_1"
    t.float "p43_scotopic_1"
    t.float "a_photpic_1"
    t.float "a_scotopic_1"
    t.float "c_photopic_1"
    t.float "c_scotopic_1"
    t.float "en1836_650_1"
    t.float "d65_x_1"
    t.float "d65_y_1"
    t.float "Jr_1"
    t.float "Tred_1"
    t.float "Tyellow_1"
    t.float "Tgreen_1"
    t.float "Tblue_1"
    t.float "Qred_1"
    t.float "Qyellow_1"
    t.float "Qgreen_1"
    t.float "Qblue_1"
    t.float "x_green_1"
    t.float "y_green_1"
    t.float "x_yellow_1"
    t.float "y_yellow_1"
    t.float "en170_313_1"
    t.float "en170_365_1"
    t.float "en170_405_1"
    t.float "csa_efuv_1"
    t.float "csa_nuv_1"
    t.float "en172_315_1"
    t.float "en172_350_1"
    t.float "en172_380_1"
    t.float "d65_photopic_2"
    t.float "d65_scotopic_2"
    t.float "p43_photopic_2"
    t.float "p43_scotopic_2"
    t.float "a_photpic_2"
    t.float "a_scotopic_2"
    t.float "c_photopic_2"
    t.float "c_scotopic_2"
    t.float "en1836_650_2"
    t.float "d65_x_2"
    t.float "d65_y_2"
    t.float "Jr_2"
    t.float "Tred_2"
    t.float "Tyellow_2"
    t.float "Tgreen_2"
    t.float "Tblue_2"
    t.float "Qred_2"
    t.float "Qyellow_2"
    t.float "Qgreen_2"
    t.float "Qblue_2"
    t.float "x_green_2"
    t.float "y_green_2"
    t.float "x_yellow_2"
    t.float "y_yellow_2"
    t.float "en170_313_2"
    t.float "en170_365_2"
    t.float "en170_405_2"
    t.float "csa_efuv_2"
    t.float "csa_nuv_2"
    t.float "en172_315_2"
    t.float "en172_350_2"
    t.float "en172_380_2"
    t.float "d65_photopic_3"
    t.float "d65_scotopic_3"
    t.float "p43_photopic_3"
    t.float "p43_scotopic_3"
    t.float "a_photpic_3"
    t.float "a_scotopic_3"
    t.float "c_photopic_3"
    t.float "c_scotopic_3"
    t.float "en1836_650_3"
    t.float "d65_x_3"
    t.float "d65_y_3"
    t.float "Jr_3"
    t.float "Tred_3"
    t.float "Tyellow_3"
    t.float "Tgreen_3"
    t.float "Tblue_3"
    t.float "Qred_3"
    t.float "Qyellow_3"
    t.float "Qgreen_3"
    t.float "Qblue_3"
    t.float "x_green_3"
    t.float "y_green_3"
    t.float "x_yellow_3"
    t.float "y_yellow_3"
    t.float "en170_313_3"
    t.float "en170_365_3"
    t.float "en170_405_3"
    t.float "csa_efuv_3"
    t.float "csa_nuv_3"
    t.float "en172_315_3"
    t.float "en172_350_3"
    t.float "en172_380_3"
    t.float "d65_photopic_4"
    t.float "d65_scotopic_4"
    t.float "p43_photopic_4"
    t.float "p43_scotopic_4"
    t.float "a_photpic_4"
    t.float "a_scotopic_4"
    t.float "c_photopic_4"
    t.float "c_scotopic_4"
    t.float "en1836_650_4"
    t.float "d65_x_4"
    t.float "d65_y_4"
    t.float "Jr_4"
    t.float "Tred_4"
    t.float "Tyellow_4"
    t.float "Tgreen_4"
    t.float "Tblue_4"
    t.float "Qred_4"
    t.float "Qyellow_4"
    t.float "Qgreen_4"
    t.float "Qblue_4"
    t.float "x_green_4"
    t.float "y_green_4"
    t.float "x_yellow_4"
    t.float "y_yellow_4"
    t.float "en170_313_4"
    t.float "en170_365_4"
    t.float "en170_405_4"
    t.float "csa_efuv_4"
    t.float "csa_nuv_4"
    t.float "en172_315_4"
    t.float "en172_350_4"
    t.float "en172_380_4"
    t.float "d65_photopic_5"
    t.float "d65_scotopic_5"
    t.float "p43_photopic_5"
    t.float "p43_scotopic_5"
    t.float "a_photpic_5"
    t.float "a_scotopic_5"
    t.float "c_photopic_5"
    t.float "c_scotopic_5"
    t.float "en1836_650_5"
    t.float "d65_x_5"
    t.float "d65_y_5"
    t.float "Jr_5"
    t.float "Tred_5"
    t.float "Tyellow_5"
    t.float "Tgreen_5"
    t.float "Tblue_5"
    t.float "Qred_5"
    t.float "Qyellow_5"
    t.float "Qgreen_5"
    t.float "Qblue_5"
    t.float "x_green_5"
    t.float "y_green_5"
    t.float "x_yellow_5"
    t.float "y_yellow_5"
    t.float "en170_313_5"
    t.float "en170_365_5"
    t.float "en170_405_5"
    t.float "csa_efuv_5"
    t.float "csa_nuv_5"
    t.float "en172_315_5"
    t.float "en172_350_5"
    t.float "en172_380_5"
    t.float "d65_photopic_6"
    t.float "d65_scotopic_6"
    t.float "p43_photopic_6"
    t.float "p43_scotopic_6"
    t.float "a_photpic_6"
    t.float "a_scotopic_6"
    t.float "c_photopic_6"
    t.float "c_scotopic_6"
    t.float "en1836_650_6"
    t.float "d65_x_6"
    t.float "d65_y_6"
    t.float "Jr_6"
    t.float "Tred_6"
    t.float "Tyellow_6"
    t.float "Tgreen_6"
    t.float "Tblue_6"
    t.float "Qred_6"
    t.float "Qyellow_6"
    t.float "Qgreen_6"
    t.float "Qblue_6"
    t.float "x_green_6"
    t.float "y_green_6"
    t.float "x_yellow_6"
    t.float "y_yellow_6"
    t.float "en170_313_6"
    t.float "en170_365_6"
    t.float "en170_405_6"
    t.float "csa_efuv_6"
    t.float "csa_nuv_6"
    t.float "en172_315_6"
    t.float "en172_350_6"
    t.float "en172_380_6"
  end

  create_table "parts", force: :cascade do |t|
    t.string "part"
    t.string "description"
    t.string "shape"
    t.string "color"
    t.string "coating"
    t.string "mfg"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

end
