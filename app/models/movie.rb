class Movie < ActiveRecord::Base
validates :director_id, :presence=> true
validates :title,:presence=> true, :uniqueness =>{:scope=>:year}
#
#  must be present
#  - title: must be present; must be unique in combination with year
#  - year: must be integer between 1870 and 2050
#  - duration: must be integer between 0 and 2764800
#  - description: no rules
#  - image_url: no rules

end
