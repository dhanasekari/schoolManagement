class Standard < ActiveRecord::Base
	belongs_to :school
	has_many :sections
	has_many :teachers
end
