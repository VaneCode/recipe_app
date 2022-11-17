class InventoryFood < ApplicationRecord
  # Associations
  belongs_to :inventory
  belongs_to :food
  # Validations
  validates_numericality_of :quantity, only_integer: true, greater_than_or_equal: 0
end
