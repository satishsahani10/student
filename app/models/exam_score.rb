class ExamScore < ActiveRecord::Base
  attr_accessible :exam_id, :mark, :student_list_id, :subject_id
  belongs_to :exam
  belongs_to :student_list
  belongs_to :subject
end
