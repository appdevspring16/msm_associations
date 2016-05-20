class Actor < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :dob}
  #  - name: must be present; must be unique in combination with dob

  #  - dob: no rules
  #  - bio: no rules
  #  - image_url: no rules
  has_many :characters
  has_many :movies, :through => :characters
end
