class CreatePeople < ActiveRecord::Migration
  def change
    ##drop_table :people
    create_table :people do |t|
      t.string :name
      t.date :birthdate
      t.integer :credit
      t.string :comments
      t.integer :parent_id
      t.timestamps null: false
    end
  end
end
