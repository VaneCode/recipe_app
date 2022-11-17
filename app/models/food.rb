class Food < ApplicationRecord
  # Associations
  has_many :recipe_foods, dependent: :destroy
  has_many :recipes, through: :recipe_foods
  has_many :inventory_foods, dependent: :destroy
  has_many :inventories, through: :recipe_foods
  # Validations
  validates :name, :measurement_unit, :price, presence: true
  validates :name, length: { maximum: 50 }
  validates_numericality_of :price, greater_than_or_equal: 0.01
end
