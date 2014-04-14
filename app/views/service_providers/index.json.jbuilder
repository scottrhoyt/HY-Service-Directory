json.array!(@service_providers) do |service_provider|
  json.extract! service_provider, :id, :phone, :name, :address, :city, :state, :zipcode, :latitude, :longitude
  json.url service_provider_url(service_provider, format: :json)
end
