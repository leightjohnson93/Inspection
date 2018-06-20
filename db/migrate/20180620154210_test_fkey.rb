class TestFkey < ActiveRecord::Migration[5.2]
  def change
    rename_column :tests, :part, :part_id
  end
end
