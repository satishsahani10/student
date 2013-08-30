class College < ActiveRecord::Base
  attr_accessible :address, :name, :university_id
  belongs_to :university
  has_many :faculties
 
end
