class Actor < ActiveRecord::Base

validates :name, :presence => true, :uniqueness => {:scope => :dob}



 has_many(:characters, :class_name => "Character", :foreign_key => "actor_id")




end
