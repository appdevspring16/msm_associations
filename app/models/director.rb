class Director < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => { :scope => :dob }

end
