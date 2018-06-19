class RenamePartColumnToPartNumber < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :jobs, :part_number, :part_id
  end
  def self.down
    rename_column :jobs, :part_number, :part_id
  end
end
