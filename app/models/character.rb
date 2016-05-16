class Character < ActiveRecord::Base
  belongs_to :movie
  belongs_to :actor
  #  Character:
  # - movie_id: must be present
  validates :movie_id, :presence => true
  # - actor_id: must be present
  validates :actor_id, :presence => true
  # - name: no rules
end
