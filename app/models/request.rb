class Request < ApplicationRecord
	validates :name, presence: true 
	validates :bg, presence: true 
	validates :address, presence: true
	validates_length_of :mobile, :minimum => 10, :maximum => 10 
	validates_format_of :mid, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :hname, presence: true
	validates :hcity, presence: true
	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
