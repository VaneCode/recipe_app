class Recipe < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :foods, through: :recipe_foods
  # Validations
  validates :name, :preparation_time, :description, presence: true
  # Methods
  def calc_price
    price = 0
    recipe_foods.includes(:food).each do |recipe_food|
      price += recipe_food.quantity * recipe_food.food.price
    end
    price.round(2)
  end
end
