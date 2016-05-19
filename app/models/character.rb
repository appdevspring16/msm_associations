class Character < ActiveRecord::Base
validates :movie_id,:actor_id,:presence=> true
end
# Character:
#  - movie_id: must be present
#  - actor_id: must be present
#  - name: no rules
