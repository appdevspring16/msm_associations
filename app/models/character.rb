class Character < ActiveRecord::Base
validates :movie_id,:actor_id,:presence=> true
belongs_to(:actor,:class_name=>"Actor",:foreign_key=>"actor_id")
end
# Character:
#  - movie_id: must be present
#  - actor_id: must be present
#  - name: no rules
