class TipoActividadsController < ApplicationController
  before_action :set_tipo_actividad, only: [:show, :edit, :update, :destroy]

  # GET /tipo_actividads
  # GET /tipo_actividads.json
  def index
    @tipo_actividads = TipoActividad.all
  end

  # GET /tipo_actividads/1
  # GET /tipo_actividads/1.json
  def show
  end

  # GET /tipo_actividads/new
  def new
    @tipo_actividad = TipoActividad.new
  end

  # GET /tipo_actividads/1/edit
  def edit
  end

  # POST /tipo_actividads
  # POST /tipo_actividads.json
  def create
    @tipo_actividad = TipoActividad.new(tipo_actividad_params)

    respond_to do |format|
      if @tipo_actividad.save
        format.html { redirect_to @tipo_actividad, notice: 'Tipo actividad se creó correctamente.' }
        format.json { render :show, status: :created, location: @tipo_actividad }
      else
        format.html { render :new }
        format.json { render json: @tipo_actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_actividads/1
  # PATCH/PUT /tipo_actividads/1.json
  def update
    respond_to do |format|
      if @tipo_actividad.update(tipo_actividad_params)
        format.html { redirect_to @tipo_actividad, notice: 'Tipo actividad se actualizo correctamente.' }
        format.json { render :show, status: :ok, location: @tipo_actividad }
      else
        format.html { render :edit }
        format.json { render json: @tipo_actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_actividads/1
  # DELETE /tipo_actividads/1.json
  def destroy
    @tipo_actividad.destroy
    respond_to do |format|
      format.html { redirect_to tipo_actividads_url, notice: 'Tipo actividad se elimino correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_actividad
      @tipo_actividad = TipoActividad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_actividad_params
      params.require(:tipo_actividad).permit(:nombre)
    end
end
