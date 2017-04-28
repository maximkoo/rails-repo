class CreateProgrammers < ActiveRecord::Migration
  def change
    create_table :programmers do |t|
      t.string :name
      t.string :job

      t.timestamps null: false
    end
  end
end
