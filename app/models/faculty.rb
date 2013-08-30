class Faculty < ActiveRecord::Base
  attr_accessible :college_id, :name
  belongs_to :college
  has_many :student_lists
  has_many :subjects
  has_many :teachers
  has_many :exams
  has_many :results
 
end
