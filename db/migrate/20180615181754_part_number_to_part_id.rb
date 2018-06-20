class PartNumberToPartId < ActiveRecord::Migration[5.2]
  def change
    rename_column :jobs, :part_number, :part_id
  end
end
