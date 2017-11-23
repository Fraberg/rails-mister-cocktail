class AddDescriptionToDoses < ActiveRecord::Migration[5.1]
  def change
    add_column :doses, :description, :string
    add_reference :doses, :cocktails, foreign_key: true, index: true
    add_reference :doses, :ingredients, foreign_key: true, index: true
  end
end
