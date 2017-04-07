class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :desc

      t.timestamps null: false
    end
  end
end
