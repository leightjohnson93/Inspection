class AddUvFields < ActiveRecord::Migration[5.2]
  def change
    (1..6).each do |n|
      add_column :jobs, "uv400_#{n}", :float
      add_column :jobs, "uv380_#{n}", :float
    end
  end
end
