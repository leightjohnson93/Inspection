class RenamePartColumnToPartNumber < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :jobs, :part, :part_number
  end
  def self.down
    rename_column :jobs, :part, :part_number
  end
end
