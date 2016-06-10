class Character < ActiveRecord::Base
  # - movie_id: must be present

  validates :movie_id, :presence => true

  # - actor_id: must be present
  validates :actor_id, :presence => true


  # - name: no rules


# here is the short cut for calling data from another model... say model actor... so when code calls :actor it now knows it belongs to the table Actor by the fk actor_id  for example character.actor.name normally would not work because actor is not a field/method in the character table

belongs_to(:actor, :class_name =>"Actor", :foreign_key =>"actor_id")

belongs_to(:movie, :class_name =>"Movie", :foreign_key =>"movie_id")

# the below did not work
# has_many(:movies, :class_name =>"Movie", :foreign_key =>"movie_id")


end
