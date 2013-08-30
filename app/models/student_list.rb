class StudentList < ActiveRecord::Base
  attr_accessible :address, :faculty_id, :first_name, :last_name, :middle_name, :phone_number, :roll_number
  belongs_to :faculty
  has_many :exam_scores
  has_many :results

  def to_s
  	self.first_name
  end

end

