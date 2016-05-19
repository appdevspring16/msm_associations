class Director < ActiveRecord::Base
  validates :name,:presence=> true, :uniqueness =>{:scope=>:dob}
  end

# Director:
#  - name: must be present; must be unique in combination with dob
#  - dob: no rules
#  - bio: no rules
#  - image_url: no rules
