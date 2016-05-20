class Character < ActiveRecord::Base
  # Character:
  # - movie_id: must be present
    validates :movie_id, :presence => true
  # - actor_id: must be present
    validates :actor_id, :presence => true
  # - name: no rules
    validates :name, :presence => true

    belongs_to :actor
    belongs_to :movie

end
