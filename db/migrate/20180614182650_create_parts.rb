class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :part
      t.string :description
      t.string :shape
      t.string :color
      t.string :coating
      t.string :mfg

      t.timestamps
    end
  end
end
