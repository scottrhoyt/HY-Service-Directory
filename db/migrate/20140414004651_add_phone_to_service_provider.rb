class AddPhoneToServiceProvider < ActiveRecord::Migration
  def change
    add_column :service_providers, :phone, :string
  end
end
