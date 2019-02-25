class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :photo, :string
    add_column :users, :birth_date, :date
    add_column :users, :office_manager, :boolean, null: false, default:false
    add_reference :users, :company, foreign_key: true
  end
end
