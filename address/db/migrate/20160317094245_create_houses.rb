class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer :num
      t.string :num_extra
      t.references :street, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
