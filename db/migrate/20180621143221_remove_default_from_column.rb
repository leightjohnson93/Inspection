class RemoveDefaultFromColumn < ActiveRecord::Migration[5.2]
  def change
    (1..6).each do |n|
      change_column_default :jobs, :"chromaticity_x_#{n}", nil
    end
  end
end
