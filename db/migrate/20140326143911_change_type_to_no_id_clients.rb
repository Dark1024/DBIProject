class ChangeTypeToNoIdClients < ActiveRecord::Migration
  def change
    change_column :clients, :id_number, :string
  end
end
