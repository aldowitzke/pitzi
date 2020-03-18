class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :device
      t.string :IMEI
      t.float :price
      t.integer :installment
      t.references :user
    end
  end
end
