class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :wv
      t.integer :line
      t.string :part_id
      t.date :coat_date
      t.time :coat_time
      t.integer :lot_quantity
      t.integer :test_quantity
      t.integer :bin
      t.string :mfg_int

      t.timestamps
    end
  end
end
