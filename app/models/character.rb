class Character < ActiveRecord::Base
  belongs_to :movie
  belongs_to :actor
  validates :movie_id, :presence => true
  validates :actor_id, :presence => true
end
