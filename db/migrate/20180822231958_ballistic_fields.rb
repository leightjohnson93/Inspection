class BallisticFields < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :ballistic_method_3, :string
    add_column :jobs, :ballistic_method_4, :string
    add_column :jobs, :ballistic_samples_3, :integer
    add_column :jobs, :ballistic_samples_4, :integer
    add_column :jobs, :ballistic_fractures_3, :integer
    add_column :jobs, :ballistic_fractures_4, :integer
    add_column :jobs, :ballistic_spalls_3, :integer
    add_column :jobs, :ballistic_spalls_4, :integer
    rename_column :jobs, :ballistic_assess, :ballistic_assess_1
    add_column :jobs, :ballistic_assess_2, :boolean
    add_column :jobs, :ballistic_assess_3, :boolean
    add_column :jobs, :ballistic_assess_4, :boolean

    (1..4).each do |n|
      add_column :jobs, "ballistic_penetrations_#{n}", :integer
      add_column :jobs, "ballistic_results_#{n}", :float
    end
  end
end
