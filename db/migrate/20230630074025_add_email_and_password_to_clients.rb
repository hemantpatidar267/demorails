class AddEmailAndPasswordToClients < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :email, :string
    add_column :clients, :password, :string
  end
end
