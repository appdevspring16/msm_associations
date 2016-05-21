class Director < ActiveRecord::Base
  # Director:
  #  - name: must be present; must be unique in combination with dob
  validates :name, :presence => true, :uniqueness => { :scope => :dob }
  #  - dob: no rules
  #  - bio: no rules
  #  - image_url: no rules

  belongs_to(:director, :class_name => "Director", :foreign_key => "director_id")

  has_many(:movies, :class_name => "Movie", :foreign_key => "director_id")

end
