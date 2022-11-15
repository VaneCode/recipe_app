class Food < ApplicationRecord
  # Associations
  has_many :recipe_foods, dependent: :destroy
  has_many :recipes, through: :recipe_foods
  has_many :inventory_foods, dependent: :destroy
  has_many :inventories, through: :recipe_foods
end
