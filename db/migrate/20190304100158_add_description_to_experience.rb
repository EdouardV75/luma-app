class AddDescriptionToExperience < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :partner_description, :text
  end
end
