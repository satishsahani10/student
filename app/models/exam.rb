class Exam < ActiveRecord::Base
  attr_accessible :faculty_id, :name
  belongs_to :faculty
  has_many :exam_score
  has_many :results
 
	def to_s
  		self.name
	end
end
