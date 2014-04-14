class FixServiceProviderLatitudeColumnName < ActiveRecord::Migration
  def change
    rename_column :service_providers, :lattitude, :latitude
  end
end
