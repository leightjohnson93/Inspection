class AddPrismaticPower < ActiveRecord::Migration[5.2]
  def change
    change_column :jobs, :lot_complete, :string
    (1..6).each do |n|
      add_column :jobs, :"prismatic_power_left_#{n}", :float
      add_column :jobs, :"prismatic_power_right_#{n}", :float
    end
  end
end
