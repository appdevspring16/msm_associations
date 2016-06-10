class Director < ActiveRecord::Base


  # Director:
  #  - name: must be present; must be unique in combination with dob
  validates :name, :presence => true, :uniqueness => {:scope => :dob}

  belongs_to(:movie, :class_name =>"Movie", :foreign_key=>"director_id")

  #  - dob: no rules
  #  - bio: no rules
  #  - image_url: no rules

end
