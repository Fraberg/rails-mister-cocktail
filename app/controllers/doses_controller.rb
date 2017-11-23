class DosesController < ApplicationController
  # def index         # GET /doses
  # end

  # def show          # GET /doses/:id
  # end

  def new           # GET /doses/new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create        # POST /doses
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail), notice: 'dose was successfully created.'
    else
      render :new
    end
  end

  # def edit          # GET /doses/:id/edit
  # end

  # def update        # PATCH /doses/:id
  # end

  def destroy       # DELETE /doses/:id
    @dose = show_dose
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def show_dose
    Dose.find(params[:id])
  end

end
