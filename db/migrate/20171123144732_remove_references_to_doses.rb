class RemoveReferencesToDoses < ActiveRecord::Migration[5.1]
  def change
    remove_reference :doses, :cocktails
    remove_reference :doses, :ingredients
  end
end
