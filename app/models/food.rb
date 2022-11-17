class Food < ApplicationRecord
  # Associations
  has_many :recipe_foods, dependent: :destroy
  has_many :recipes, through: :recipe_foods
  has_many :inventory_foods, dependent: :destroy
  has_many :inventories, through: :recipe_foods
  belongs_to :user, class_name: 'User'

  # Validations

  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :measurement_unit, presence: true
end
