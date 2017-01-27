class Listing < ApplicationRecord
	#has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "default.jpg"
	has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  },
  	default_url: "default.jpg"
  	#Validates the attached image is a images/jpeg or images/png
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
