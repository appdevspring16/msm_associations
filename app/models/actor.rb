class Actor < ActiveRecord::Base

  validates :name, uniqueness:{scope: :dob, message:"One actor of this name already has this date of birth" }

  has_many(:characters, :class_name=>"Movie", :foreign_key=>"movie_id")
  has_many(:characters, :class_name=>"Character", :foreign_key=>"actor_id")

end
