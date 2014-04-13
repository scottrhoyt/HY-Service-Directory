json.array!(@service_providers) do |service_provider|
  json.extract! service_provider, :id, :name, :address, :city, :state, :zipcode, :lattitude, :longitude
  json.url service_provider_url(service_provider, format: :json)
end
