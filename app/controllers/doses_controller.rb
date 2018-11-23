class DosesController < ApplicationController

  def index
    @doses = Dose.all
  end

  def show
    @dose = Dose.find(params[:id])
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = cocktail
    @dose.save
    redirect_to cocktail_doses_path
 end


  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_doses_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
