class Director < ActiveRecord::Base

  validates :name, presence:true
  validates :name, uniqueness:{scope: :dob, message:"This director, or one with an identical name and date of birth, is already in the database." }

end
