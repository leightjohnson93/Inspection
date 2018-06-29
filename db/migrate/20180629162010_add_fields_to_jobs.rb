class AddFieldsToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :"nm_1", :string
    add_column :jobs, :"nm_2", :string

    add_column :jobs, :qc_int, :string
    add_column :jobs, :lot_assess, :boolean
    add_column :jobs, :lot_complete, :boolean
    add_column :jobs, :mrr_id, :integer
    add_column :jobs, :receiver, :integer

    (1..6).each do |n|
      remove_column :jobs, :"od_#{n}"
    end

    (1..6).each do |n|
      add_column :jobs, :"od_#{n}_nm_1", :float
      add_column :jobs, :"od_#{n}_nm_2", :float
    end
  end
end
