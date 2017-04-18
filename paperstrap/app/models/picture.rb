class Picture < ActiveRecord::Base
	has_attached_file 	:image, 
						styles:{thumb: "100x100>", medium: "300x300>", big: "500x500>"}, # от маленького к большому, иначе не работает
						default_url: "/images/public/NO.jpg",
						:url => "/images/:basename.:extension"
	validates_attachment_content_type 	:image, 
										:content_type=> ["image/jpeg","image/png"]

	def model_method
		return "This string has been returned by model_method in Picture MODEL file"
	end;									
end
