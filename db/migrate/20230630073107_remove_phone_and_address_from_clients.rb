class RemovePhoneAndAddressFromClients < ActiveRecord::Migration[7.0]
  def change
    remove_column :clients, :phone, :integer
    remove_column :clients, :address, :text
  end
end
