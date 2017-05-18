class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer :house_num
      t.string :house_num_extra
      t.integer :height
      t.string :color
      t.string :description
      t.references :street, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
