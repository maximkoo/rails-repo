class House < ActiveRecord::Base
  belongs_to :street
  belongs_to :district
end
