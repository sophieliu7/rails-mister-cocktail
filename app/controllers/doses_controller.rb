class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(params[:cocktail_id])
    else
      render :new
    end
    # @dose = Dose.new(dose_params)
    # @dose.cocktail = Cocktail.find(params[:cocktail_id])
    # # @dose.ingredient = Ingredient.find(params[:ingredient_id])
    # @dose.save!
    # redirect_to cocktail_path(params[:cocktail_id])
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :description, :amount)
  end
end
