class AddExchangeIdColumnToRequestsTable < ActiveRecord::Migration
  def change
    add_column :requests, :exchange_id, :integer
  end
end
