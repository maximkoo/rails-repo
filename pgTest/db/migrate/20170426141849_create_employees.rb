class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :job

      t.timestamps null: false
    end
    Filler.new.fill;
  end
end
