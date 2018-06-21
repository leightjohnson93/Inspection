class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items, :primary_key => :part do |t|
      t.string "description"
      t.string "shape"
      t.string "color"
      t.string "coating"
      t.string "mfg"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
    change_column :items, :part, :string
    drop_table :tests
  end
end
