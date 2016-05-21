class Director < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: { scope: :dob}
  has_many :movies, :class_name => "Movie", :foreign_key => "director_id"
end
