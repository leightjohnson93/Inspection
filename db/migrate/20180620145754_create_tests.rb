class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :part
      t.string :test_name

      t.timestamps
    end
  end
end
