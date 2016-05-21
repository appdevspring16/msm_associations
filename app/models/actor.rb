class Actor < ActiveRecord::Base

    has_many(:characters, :class_name => "Character", :foreign_key => "actor_id")
    has_many :movies, :through => :characters

    validates :name,  :presence => true, :uniqueness => { :scope => :dob}
end
