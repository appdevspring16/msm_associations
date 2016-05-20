class Character < ActiveRecord::Base

# - movie_id: must be present
validates :movie_id, :presence => true
validates :actor_id, :presence => true
# - actor_id: must be present
# - name: no rules

end
