class ChangeLotQuantityToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :jobs, :lot_quantity, :integer
  end
end
