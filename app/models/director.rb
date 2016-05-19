class Director < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :dob }

  has_many :movies
end
