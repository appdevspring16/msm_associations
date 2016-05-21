class Actor < ActiveRecord::Base

validates :name, :presence => true, :uniqueness => { :scope => :year }


has_many :characters
has_many :movies, :through => :characters
# validates :title, :presence => true, :uniqueness => { :scope => :year }
end
