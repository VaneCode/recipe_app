class Inventory < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :inventory_foods, dependent: :destroy
  has_many :foods, through: :inventory_foods
end
