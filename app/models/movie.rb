class Movie < ActiveRecord::Base

validates :director_id, :title, presence:true
validates :title, uniqueness:{scope: :year, message:"One title of this name per year" }
validates :year, numericality: {greater_than_or_equal_to: 1870, message:"Year must be greater than or equal to 1870"}
validates :year, numericality: {less_than_or_equal_to: 2050, message:"Year must be less than or equal to 2050"}
validates :duration, numericality: {greater_than: 0, message:"Duration must be greater than 0"}
validates :duration, numericality: {less_than_or_equal_to: 2764800, message:"Duration must be less than or equal to 2764800"}

belongs_to(:director, :class_name=>"Director", :foreign_key=>"director_id")
has_many(:characters, :class_name=>"Character", :foreign_key=>"movie_id")

end
