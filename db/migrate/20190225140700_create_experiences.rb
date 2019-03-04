class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :name
      t.float :price
      t.float :public_price
      t.date :validity_date
      t.text :description
      t.references :category, foreign_key: true
      t.string :partner_logo
      t.string :partner_name
      t.string :photo_experience

      t.timestamps
    end
  end
end
