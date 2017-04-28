class AddSayingToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :saying, :string
  end
end
