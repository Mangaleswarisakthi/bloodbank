class Personal < ApplicationRecord
has_one :bdetail, foreign_key: :bid

  accepts_nested_attributes_for :bdetail, allow_destroy: true

has_one :bdetail, foreign_key: :bid, dependent: :destroy
	validates :name, presence: true 
	validates :db, presence: true 
	validates :gender, presence: true
	validates_length_of :mobile, :minimum => 10, :maximum => 10 
	validates_format_of :mid, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :address, presence: true
	validates :city, presence: true
	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
