class ParametersForEnAbrasionCalculations < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :annular_machine_initial, :decimal
    add_column :jobs, :circular_machine_initial, :decimal

    add_column :jobs, :annular_machine_final, :decimal
    add_column :jobs, :circular_machine_final, :decimal

    add_column :jobs, :reading_initial_1, :decimal, :default => 0.0004
    add_column :jobs, :reading_initial_2, :decimal, :default => 0.003
    add_column :jobs, :reading_initial_3, :decimal, :default => 0.03
    add_column :jobs, :reading_initial_4, :decimal, :default => 0.3
    add_column :jobs, :reading_initial_5, :decimal, :default => 3

    add_column :jobs, :reading_final_1, :decimal, :default => 0.0004
    add_column :jobs, :reading_final_2, :decimal, :default => 0.003
    add_column :jobs, :reading_final_3, :decimal, :default => 0.03
    add_column :jobs, :reading_final_4, :decimal, :default => 0.3
    add_column :jobs, :reading_final_5, :decimal, :default => 3

    (1..12).each do |n|
      add_column :jobs, :"annular_initial_#{n}", :decimal
      add_column :jobs, :"circular_initial_#{n}", :decimal
    end

    (1..8).each do |n|
      add_column :jobs, :"annular_sample_#{n}", :decimal
      add_column :jobs, :"circular_sample_#{n}", :decimal
    end

    (1..8).each do |n|
      if n % 2 == 0
        add_column :jobs, :"annular_glass_#{n}", :decimal
        add_column :jobs, :"circular_glass_#{n}", :decimal
      else
        add_column :jobs, :"annular_pmma_#{n}", :decimal
        add_column :jobs, :"circular_pmma_#{n}", :decimal
      end
    end
  end
end
