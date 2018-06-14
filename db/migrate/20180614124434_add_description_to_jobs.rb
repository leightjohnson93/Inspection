class AddDescriptionToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :description, :string
  end
end
