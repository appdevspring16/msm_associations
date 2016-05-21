class Movie < ActiveRecord::Base

  belongs_to(:director, :class_name => "Director", :foreign_key => "director_id")
  has_many(:characters, :class_name => "Character", :foreign_key => "movie_id")
  has_many :actors, :through => :characters

  validates :director_id,  :presence => true
  validates :title,  :presence => true, :uniqueness => { :scope => :year}
  validates :year, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1870,
    :less_than_or_equal_to => 2050 }

    validates :duration, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0,
      :less_than_or_equal_to => 2764800 }


    end
