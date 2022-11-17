class InventoryFood < ApplicationRecord
  # Associations
  validates :food_id, uniqueness: { scope: :inventory_id }
  belongs_to :inventory
  belongs_to :food
end
