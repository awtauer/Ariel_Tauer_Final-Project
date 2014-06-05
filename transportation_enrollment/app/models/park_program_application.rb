class ParkProgramApplication < ActiveRecord::Base
	validates :student_name, :presence => true

end
