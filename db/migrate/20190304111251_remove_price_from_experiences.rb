class RemovePriceFromExperiences < ActiveRecord::Migration[5.2]
  def change
    remove_column :experiences, :price, :float
  end
end
