class FoodsController < ApplicationController
  before_action :set_food, only: %i[show edit update destroy]

  def index
    @foods = Food.all
  end

  def destroy
    @food = Food.find_by(id: params[:id])
    @food.destroy
    respond_to do |format|
      format.html { redirect_to new_food_path(params[:id]), notice: 'Food was successfully destroyed.' }
    end
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    respond_to do |format|
      if @food.save
        format.html { redirect_to new_food_path(params[:id]), notice: 'Food has been deleted.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price, :quantity)
  end
end
