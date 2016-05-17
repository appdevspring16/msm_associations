class Actor < ActiveRecord::Base





  # - name: must be present; must be unique in combination with dob
validates :name, :presence => {:scope => :dob}

  # - dob: no rules
  # - bio: no rules
  # - image_url: no rules



end
