class DropItemsRemoveArrayTypes < ActiveRecord::Migration[5.2]
  def change
    drop_table :items

    (1..6).each do |n|
      change_column :jobs, :"chromaticity_#{n}", :float
      rename_column :jobs, :"chromaticity_#{n}", :"chromaticity_x_#{n}"
      add_column :jobs, :"chromaticity_y_#{n}", :float

      add_column :jobs, :"resolving_right_#{n}", :integer
      add_column :jobs, :"refractive_right_#{n}", :float
      add_column :jobs, :"astigmatism_right_#{n}", :float
      add_column :jobs, :"horizontal_prism_right_#{n}", :float
      add_column :jobs, :"vertical_prism_right_#{n}", :float

      rename_column :jobs, :"resolving_#{n}", :"resolving_left_#{n}"
      rename_column :jobs, :"refractive_#{n}", :"refractive_left_#{n}"
      rename_column :jobs, :"astigmatism_#{n}", :"astigmatism_left_#{n}"
      rename_column :jobs, :"horizontal_prism_#{n}", :"horizontal_left_#{n}"
      rename_column :jobs, :"vertical_prism_#{n}", :"vertical_left_#{n}"
    end
  end
end
