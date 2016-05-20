class Director < ActiveRecord::Base
  has_many :Movies

  validates :name, presence: true, uniqueness: { scope: :dob,
    message: "should happen once per dob" }

#Director:
# - name: must be present; must be unique in combination with dob
# - dob: no rules
# - bio: no rules
# - image_url: no rules

end
