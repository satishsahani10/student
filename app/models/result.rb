class Result < ActiveRecord::Base
  attr_accessible :division, :exam_id, :percentage, :student_list_id, :faculty_id
  belongs_to :student_list
  belongs_to :faculty
  belongs_to :exam
 

end
