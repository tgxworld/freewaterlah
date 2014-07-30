class Restaurant < ActiveRecord::Base
  reverse_geocoded_by :latitude, :longitude, address: :street_address
  after_validation :reverse_geocode, if: :update_geocode?

  validates :name, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true

  private

  def update_geocode?
    self.latitude_changed? && self.longitude_changed?
  end
end
