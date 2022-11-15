class RecipeFood < ApplicationRecord
  # Associations
  belongs_to :recipe
  belongs_to :food
end
