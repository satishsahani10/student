class Subject < ActiveRecord::Base
  attr_accessible :faculty_id, :name
  belongs_to :faculty
  has_many :teachers
  has_many :exam_scores


	def to_s
  		self.name
	end


end
