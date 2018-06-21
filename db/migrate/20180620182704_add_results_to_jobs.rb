class AddResultsToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :relative_humidity, :float
    add_column :jobs, :illuminate, :string

    add_column :jobs, :visual_inspection, :string
    add_column :jobs, :visual_inspection_assess, :boolean
    add_column :jobs, :dimensions, :string
    add_column :jobs, :dimensions_assess, :boolean
    add_column :jobs, :markings, :string
    add_column :jobs, :markings_assess, :boolean
    add_column :jobs, :adhesion, :string
    add_column :jobs, :adhesion_assess, :boolean
    add_column :jobs, :fit, :string
    add_column :jobs, :fit_assess, :boolean

    add_column :jobs, :ballistic_v50, :float
    add_column :jobs, :"ballistic_assess", :boolean
    (1..2).each do |n|
      add_column :jobs, :"ballistic_method_#{n}", :string
      add_column :jobs, :"ballistic_samples_#{n}", :integer
      add_column :jobs, :"ballistic_fractures_#{n}", :integer
      add_column :jobs, :"ballistic_spalls_#{n}", :integer
    end

    (1..6).each do |n|
      add_column :jobs, :"vlt_#{n}", :float
      add_column :jobs, :"neutrality_#{n}", :float
      add_column :jobs, :"chromaticity_#{n}", :text, array: true, default: [].to_yaml
      add_column :jobs, :"uv_#{n}", :float
      add_column :jobs, :"od_#{n}", :text, array: true, default: [].to_yaml

      add_column :jobs, :"haze_initial_#{n}", :float
      add_column :jobs, :"haze_abraded_#{n}", :float
      add_column :jobs, :"haze_gain_#{n}", :float

      add_column :jobs, :"resolving_#{n}", :integer
      add_column :jobs, :"refractive_#{n}", :float
      add_column :jobs, :"astigmatism_#{n}", :float
      add_column :jobs, :"horizontal_prism_#{n}", :float
      add_column :jobs, :"vertical_prism_#{n}", :float
      add_column :jobs, :"horizontal_imbalance_#{n}", :float
      add_column :jobs, :"vertical_imbalance_#{n}", :float
    end

    (1..8).each do |n|
      add_column :jobs, :"antifog_time#{n}", :float
      add_column :jobs, :"antifog_thickness_#{n}", :float
      add_column :jobs, :"hard_thickness_#{n}", :float
      add_column :jobs, :"en_abrasion_#{n}", :float
    end

    (1..20).each do |n|
      add_column :jobs, :"dol_#{n}", :float
    end

    add_column :jobs, :job_assess, :boolean
    add_column :jobs, :job_notes, :text
    add_column :jobs, :qc_inital, :string
  end
end
