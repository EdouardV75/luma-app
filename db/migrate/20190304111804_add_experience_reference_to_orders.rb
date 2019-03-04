class AddExperienceReferenceToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :experience, foreign_key: true
  end
end
