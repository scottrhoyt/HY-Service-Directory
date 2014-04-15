class ServiceProvider < ActiveRecord::Base
  has_and_belongs_to_many :service_types
  validates_presence_of :name, :address, :city, :state, :zipcode, :latitude, :longitude, :phone
end
