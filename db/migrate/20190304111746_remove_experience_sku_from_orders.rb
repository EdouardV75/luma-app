class RemoveExperienceSkuFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :experience_sku, :string
  end
end
