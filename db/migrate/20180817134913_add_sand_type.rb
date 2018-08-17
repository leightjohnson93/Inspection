class AddSandType < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :sand, :string
  end
end
