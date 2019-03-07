class AddEmojiToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :emoji, :string
  end
end
