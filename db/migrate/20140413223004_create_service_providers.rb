class CreateServiceProviders < ActiveRecord::Migration
  def change
    create_table :service_providers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.decimal :lattitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
