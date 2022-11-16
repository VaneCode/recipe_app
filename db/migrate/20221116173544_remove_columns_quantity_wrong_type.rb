class RemoveColumnsQuantityWrongType < ActiveRecord::Migration[7.0]
  def change
    remove_column :inventory_foods, :quantity
    remove_column :recipe_foods, :quantity
  end
end
