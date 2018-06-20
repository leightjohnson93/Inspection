class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :wv
      t.integer :line
      t.string :part_id
      t.date :coat_date
      t.time :coat_time
      t.string :description
      t.integer :lot_quantity
      t.integer :test_quantity
      t.integer :bin
      t.string :mfg_int
      #t.integer :part_id

      t.timestamps
    end
  end
end
