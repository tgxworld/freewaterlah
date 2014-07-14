class Restaurant < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, if: :update_geocode?

  validates :name, presence: true
  validates :street_address, presence: true
  validates :postal_code, presence: true
  validates :website_url, presence: true, url: true

  private

  def update_geocode?
    self.street_address_changed? && self.postal_code_changed?
  end

  def address
    "#{self.street_address}, Singapore #{self.postal_code}"
  end
end
