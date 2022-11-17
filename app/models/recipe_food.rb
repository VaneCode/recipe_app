class RecipeFood < ApplicationRecord
  # Associations
  belongs_to :recipe
  belongs_to :food
  # Validations
  validates_numericality_of :quantity, only_integer: true, greater_than_or_equal: 0
  validates_uniqueness_of :food_id, scope: :recipe_id
end
