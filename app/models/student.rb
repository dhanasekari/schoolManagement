class Student < ActiveRecord::Base
	belongs_to :section
	has_many :subjects
	has_many :attendances
	has_many :exams
	has_many :results
end
