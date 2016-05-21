class Director < ActiveRecord::Base

#  validates :director_id, :presence => true

#  validates :title, :presence => true, :uniqueness => { :scope => :year }

#  validates :year, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1870, :less_than_or_equal_to => 2050 }

#  validates :duration, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 2764800 }

validates :name, :presence => true, :uniqueness => { :scope => :dob }


has_many :movies

#  Director:
#   - name: must be present; must be unique in combination with dob
#   - dob: no rules
#   - bio: no rules
#   - image_url: no rules


end
