class Sighting < ActiveRecord::Base
  validate do
       errors[:date] << "cannot be in the future" if date && date > Date.today
     end
  validates :latitude, :numericality => true
  validates :longitude, :numericality => true

  belongs_to :species
end
