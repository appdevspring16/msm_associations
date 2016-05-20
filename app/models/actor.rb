class Actor < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :dob }
end
