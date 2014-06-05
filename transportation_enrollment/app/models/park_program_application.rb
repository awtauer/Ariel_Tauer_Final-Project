class ParkProgramApplication < ActiveRecord::Base
	validates :student_name, :presence => true

	belongs_to :admin
end
