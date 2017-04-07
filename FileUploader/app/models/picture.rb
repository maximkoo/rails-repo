class Picture < ActiveRecord::Base
	has_attached_file :image, 
	:url => "/images/:basename.:extension", #Относительный путь для загрузки
	#:path => "C:/Rails/1/:basename.:extension" #абсолютный путь
	:default_url => "/images/missing.png"
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]  
	#attr_accessor :image_file_name
  #attr_accessor :image_content_type
  #attr_accessor :image_file_size
  #attr_accessor :image_updated_at
end
