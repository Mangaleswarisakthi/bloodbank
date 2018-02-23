class Bdetail < ApplicationRecord
belongs_to :personal, required: false
	validates :bid, presence: true 
	validates :bg, presence: true 
	validates :age, presence: true, numericality: {:greater_than => 20}
	validates :wait, presence: true, numericality: {:greater_than => 50}
	validates :hemo, presence: true, numericality: {:greater_than => 10}
	validates :ldate, presence: true
	
end
