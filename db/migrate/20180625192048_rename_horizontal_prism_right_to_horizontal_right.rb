class RenameHorizontalPrismRightToHorizontalRight < ActiveRecord::Migration[5.2]
  def change
    (1..6).each do |n|
      rename_column :jobs, :"horizontal_prism_right_#{n}", :"horizontal_right_#{n}"
      rename_column :jobs, :"vertical_prism_right_#{n}", :"vertical_right_#{n}"
    end
  end
end
