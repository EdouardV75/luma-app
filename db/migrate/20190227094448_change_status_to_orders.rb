class ChangeStatusToOrders < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :status, :string, default: "Pending"
  end
end
