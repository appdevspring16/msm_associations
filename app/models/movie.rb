class Movie < ActiveRecord::Base
   validates :director_id, presence: true
   validates :title, presence: true
   validates :title, uniqueness: { scope: :year,
    message: "Same title in the year" }
    validates_numericality_of :year, greater_than_or_equal_to: 1870
    validates_numericality_of :year, less_than_or_equal_to: 2050
    validates_numericality_of :year, greater_than_or_equal_to: 0
    validates_numericality_of :duration, less_than_or_equal_to: 2764800
    belongs_to :director, :class_name => "Director", :foreign_key => "director_id"
end
