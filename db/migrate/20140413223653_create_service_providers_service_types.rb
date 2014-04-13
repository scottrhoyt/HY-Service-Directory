class CreateServiceProvidersServiceTypes < ActiveRecord::Migration
  def self.up
    create_table :service_providers_service_types, :id => false do |t|
      t.references :service_provider
      t.references :service_type
    end
    add_index :service_providers_service_types, [:service_provider_id, :service_type_id], name: 'by_service_provider_service_type'
    add_index :service_providers_service_types, :service_type_id, name: 'by_service_type'
  end

  def self.down
    drop_table :service_providers_service_types
  end
end
