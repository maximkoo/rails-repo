class AddDistrictToHouse < ActiveRecord::Migration
  def change
    add_reference :houses, :district, index: true, foreign_key: true
  end
end
