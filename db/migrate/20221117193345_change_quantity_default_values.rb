class ChangeQuantityDefaultValues < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:inventory_foods, :quantity, from: nil, to: 0)
    change_column_default(:recipe_foods, :quantity, from: nil, to: 0)  
  end
end
