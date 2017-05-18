class House < ActiveRecord::Base
  #attr_accessible :dom_number, :house_num, :house_num_extra, :height, :color, :description
  belongs_to :street
  
  scope :scope1, -> (v_house_num) { where house_num: v_house_num }
  scope :scope2, -> (v_color) { where color: v_color }
  #scope :scope3, -> (h1, h2) {where ("height between #{h1} and #{h2}")} ##то же самое
  #scope :scope3, -> (h1, h2) {where ("height between ? and ?"),h1,h2} ##то же самое
  scope :scope3, -> (h1, h2) {where height: (h1..h2)} ##то же самое Range Condition

  def dom_number
  	#a<<house_num_extra unless house_num_extra.nil?
  	"Дом "<<house_num.to_s<<house_num_extra.to_s
  end;	

  def dom_number=(dom)
  	self.house_num=dom.tr('^0-9', '') 
  end;	
end
