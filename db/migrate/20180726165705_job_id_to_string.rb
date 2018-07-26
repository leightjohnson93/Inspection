class JobIdToString < ActiveRecord::Migration[5.2]
  def change
    change_column :jobs, :id, :string
  end
end
