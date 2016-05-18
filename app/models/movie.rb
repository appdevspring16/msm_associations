class Movie < ActiveRecord::Base



  # Movie:
  #  - director_id: must be present
  validates :director_id, :presence => true

  #  - title: must be present; must be unique in combination with year
  validates :title, :presence => true, :uniqueness => {:scope => :year}


  #  - year: must be integer between 1870 and 2050 (see numericality); note only_integer: is the same as writing :only_integer=>
  validates :year, numericality: {only_integer: true, greater_than_or_equal_to: 1870, less_than_or_equal_to: 2050}


  #  - duration: must be integer between 0 and 2764800
  validates :duration, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 2764800}

  #  - description: no rules
  #  - image_url: no rules




  # here is the short cut for calling data from another model... say model director... so when code calls :director it now knows it belongs to the table Director by the fk director_id  for example @movie.director.name normally would not work because director is not a field/method in the Movie model

  belongs_to(:director, :class_name => "Director", :foreign_key =>"director_id")



  # short cut2
  has_many(:characters, :class_name => "Character", :foreign_key =>"movie_id")

  # when do you use one over the other


end
