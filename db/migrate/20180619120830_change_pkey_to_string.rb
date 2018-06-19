class ChangePkeyToString < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :part, :string
  end
end
