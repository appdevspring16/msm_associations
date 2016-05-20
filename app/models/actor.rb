class Actor < ActiveRecord::Base

validates :name, :presence=> true


  has_many :characters
  has_many :movies, :through => :characters
end
