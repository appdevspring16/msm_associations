class Movie < ActiveRecord::Base
  validates :director_id, :presence=>true
  validates :title, :presence=>true, :uniqueness => { :scope => :year }
  validates :year, numericality: {only_integer:true, greater_than:1870, less_than:2050}
  validates :duration, numericality: {only_integer:true, greater_than:0, less_than:2764800}
end
