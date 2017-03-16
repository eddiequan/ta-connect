class TaApplication < ApplicationRecord
	has_one :user
	has_one :course

	def self.by_course_id(course_id)
	    TaApplication.where(course_id: course_id)
	end
end
