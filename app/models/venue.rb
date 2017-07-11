class Venue
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :coodinates, type: Array

  attr_accessor :latitude, :longitude
  index({ coordinates: '2dsphere' })

  after_validation :set_coodinates

  private
  def set_coodinates
    self.coordinates = [longitude.to_f, latitude.to_f]
  end

end
