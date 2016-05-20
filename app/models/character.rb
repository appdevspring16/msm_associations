class Character < ActiveRecord::Base
  validates :movie_id, :presence => true
  validates :actor_id, :presence => true
end
