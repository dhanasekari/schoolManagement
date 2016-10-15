class Exam < ActiveRecord::Base
	belongs_to :student
	has_many :results
end
