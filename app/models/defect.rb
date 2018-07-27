class Defect < ApplicationRecord
	#belongs_to :user
	validates :defect_number, presence: true
end
