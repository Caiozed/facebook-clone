class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.integer :receiver_id
      t.integer :issuer_id

      t.timestamps
    end
    add_index :requests, :receiver_id
    add_index :requests, :issuer_id
    add_index :requests, [:receiver_id, :issuer_id], unique: true
  end
end
