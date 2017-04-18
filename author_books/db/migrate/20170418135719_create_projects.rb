class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :mission
      t.references :programmer, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
