class AddRequestsTable < ActiveRecord::Migration
  def change
  	create_table :requests do |t|
  		t.integer :product_id
  		t.integer :buyer_id
  		t.integer :owner_id
  		t.boolean :done					#transaction complete = true, transaction pending = false
  		t.timestamps
  	end
  end
end
