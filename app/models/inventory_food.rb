class InventoryFood < ApplicationRecord
  # Associations
  belongs_to :inventory
  belongs_to :food
end
