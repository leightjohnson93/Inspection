class AddLotQuantityToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :lot_quantity, :integer
  end
end
