class Movie < ActiveRecord::Base

  # - director_id: must be present
  validates :director_id, :presence => true

  # - title: must be present; must be unique in combination with year
  validates :title, :presence => true, :uniqueness => { :scope => :year }

  # - year: must be integer between 1870 and 2050
  validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 1870, less_than_or_equal_to: 2050 }

  # - duration: must be integer between 0 and 2764800
  validates :duration, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 2764800 }

  # - description: no rules

  # - image_url: no rules

  belongs_to(:director, :class_name => "Director", :foreign_key => "director_id")
  has_many(:characters, :class_name => "Character", :foreign_key => "movie_id")
  has_many(:actors, :through => :characters)

end
