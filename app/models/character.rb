class Character < ActiveRecord::Base

validates :movie_id, :presence => true
validates :actor_id, :presence => true

belongs_to :movie

belongs_to :actor

end
