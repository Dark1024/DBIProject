class AddIdentificationForClients < ActiveRecord::Migration
  def change
    add_column :clients, :id_number, :integer
  end
end
