class University < ActiveRecord::Base
  attr_accessible :address, :country, :name
  has_many :colleges
end
