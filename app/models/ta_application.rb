class TaApplication < ApplicationRecord
	has_one :course
	has_one :user

	def self.by_course_id(course_id)
	    TaApplication.where(course_id: course_id)
	end
end
