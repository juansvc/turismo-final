class NombreTransportesController < ApplicationController
  before_action :set_nombre_transporte, only: [:show, :edit, :update, :destroy]

  # GET /nombre_transportes
  # GET /nombre_transportes.json
  def index
    @nombre_transportes = NombreTransporte.all
  end

  # GET /nombre_transportes/1
  # GET /nombre_transportes/1.json
  def show
  end

  # GET /nombre_transportes/new
  def new
    @nombre_transporte = NombreTransporte.new
  end

  # GET /nombre_transportes/1/edit
  def edit
  end

  # POST /nombre_transportes
  # POST /nombre_transportes.json
  def create
    @nombre_transporte = NombreTransporte.new(nombre_transporte_params)

    respond_to do |format|
      if @nombre_transporte.save
        format.html { redirect_to @nombre_transporte, notice: 'Nombre transporte se creó correctamente.' }
        format.json { render :show, status: :created, location: @nombre_transporte }
      else
        format.html { render :new }
        format.json { render json: @nombre_transporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nombre_transportes/1
  # PATCH/PUT /nombre_transportes/1.json
  def update
    respond_to do |format|
      if @nombre_transporte.update(nombre_transporte_params)
        format.html { redirect_to @nombre_transporte, notice: 'Nombre transporte se actualizo correctamente.' }
        format.json { render :show, status: :ok, location: @nombre_transporte }
      else
        format.html { render :edit }
        format.json { render json: @nombre_transporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nombre_transportes/1
  # DELETE /nombre_transportes/1.json
  def destroy
    @nombre_transporte.destroy
    respond_to do |format|
      format.html { redirect_to nombre_transportes_url, notice: 'Nombre transporte se elimino correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nombre_transporte
      @nombre_transporte = NombreTransporte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nombre_transporte_params
      params.require(:nombre_transporte).permit(:nombre)
    end
end
