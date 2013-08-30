class Teacher < ActiveRecord::Base
  attr_accessible :address, :first_name, :last_name, :middle_name, :phone_number, :subject_id
  belongs_to :faculty
  belongs_to :subject
end
