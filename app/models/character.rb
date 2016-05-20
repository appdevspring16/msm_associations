class Character < ActiveRecord::Base
  validates :movie_id, :presence => true
  validates :actor_id, :presence => true

  belongs_to(:actors, :class_name => "Actor", :foreign_key => "actor_id")
  belongs_to(:movies, :class_name => "Movie", :foreign_key => "movie_id")
end
