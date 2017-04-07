class Picture < ActiveRecord::Base
	has_attached_file :image,
	:url => "/images/:basename.:extension"
	validates_attachment_content_type :image, :content_type=> ["image/jpeg","image/png"]

end
