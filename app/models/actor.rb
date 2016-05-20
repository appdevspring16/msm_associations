class Actor < ActiveRecord::Base

  validates :name, uniqueness:{scope: :dob, message:"One actor of this name already has this date of birth" }
  
end
