class CocktailsController < ApplicationController
  def index         # GET /cocktails
    @cocktails = Cocktail.all
  end

  def show          # GET /cocktails/:id
    @cocktail = show_cocktail
  end

  def new           # GET /cocktails/new
    @cocktail = Cocktail.new
  end

  def create        # POST /cocktails
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail), notice: 'cocktail was successfully created.'
    else
      render :new
    end
  end

  def edit          # GET /cocktails/:id/edit
    @cocktail = show_cocktail
  end

  def update        # PATCH /cocktails/:id
    @cocktail = show_cocktail
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy       # DELETE /cocktails/:id
    @cocktail = show_cocktail
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

  def show_cocktail
    Cocktail.find(params[:id])
  end

end
