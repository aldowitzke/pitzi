class ChangeImeiOnOrders < ActiveRecord::Migration[6.0]
  def change
    rename_column :orders, :IMEI, :imei
  end
end
