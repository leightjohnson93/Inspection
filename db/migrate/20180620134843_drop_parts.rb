class DropParts < ActiveRecord::Migration[5.2]
  def change
    drop_table :parts
    remove_column :jobs, :description
  end
end
