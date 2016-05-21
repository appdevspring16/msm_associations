class Actor < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :dob }

  has_many :characters
  has_many :movies, :through => :characters
end
