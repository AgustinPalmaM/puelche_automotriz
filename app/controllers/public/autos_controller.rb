class Public::AutosController < ApplicationController
  def index
    @autos = Auto.all
  end

  def show
    @auto = Auto.find(params[:id])
  end

  def new
    @auto = Auto.new
  end

  def create
    @auto = Auto.new(auto_params)
    if @auto.save
      flash[:notice] = 'creado correctamente'
      redirect_to public_auto_path(@auto)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @auto = Auto.find(params[:id])
  end

  def update
    @auto = Auto.find(params[:id])
    if @auto.update(auto_params)
      flash[:notice] = 'editado'
      redirect_to public_auto_path
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  private

  def auto_params
    params.require(:auto).permit(
      :marca,
      :estilo,
      :modelo,
      :anio,
      :color,
      :costo,
      :precio,
      :transmision,
      :traccion,
      :combustible,
      :categoria,
      :estado,
      :kilometraje,
      photos: []
    )
  end
end
