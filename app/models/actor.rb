class Actor < ActiveRecord::Base
  # - name: must be present; must be unique in combination with do
  validates :name, :presence => true, :uniqueness => { :scope => :dob }
  # - dob: no rules
  # - bio: no rules
  # - image_url: no rules
end
