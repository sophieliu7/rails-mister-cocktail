class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.find_by cocktail_id: @cocktail.id
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktails_path
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
