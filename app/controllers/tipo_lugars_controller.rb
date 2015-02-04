class TipoLugarsController < ApplicationController
  before_action :set_tipo_lugar, only: [:show, :edit, :update, :destroy]

  # GET /tipo_lugars
  # GET /tipo_lugars.json
  def index
    @tipo_lugars = TipoLugar.all
  end

  # GET /tipo_lugars/1
  # GET /tipo_lugars/1.json
  def show
  end

  # GET /tipo_lugars/new
  def new
    @tipo_lugar = TipoLugar.new
  end

  # GET /tipo_lugars/1/edit
  def edit
  end

  # POST /tipo_lugars
  # POST /tipo_lugars.json
  def create
    @tipo_lugar = TipoLugar.new(tipo_lugar_params)

    respond_to do |format|
      if @tipo_lugar.save
        format.html { redirect_to @tipo_lugar, notice: 'Tipo lugar se creó correctamente.' }
        format.json { render :show, status: :created, location: @tipo_lugar }
      else
        format.html { render :new }
        format.json { render json: @tipo_lugar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_lugars/1
  # PATCH/PUT /tipo_lugars/1.json
  def update
    respond_to do |format|
      if @tipo_lugar.update(tipo_lugar_params)
        format.html { redirect_to @tipo_lugar, notice: 'Tipo lugar se actualizo correctamente.' }
        format.json { render :show, status: :ok, location: @tipo_lugar }
      else
        format.html { render :edit }
        format.json { render json: @tipo_lugar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_lugars/1
  # DELETE /tipo_lugars/1.json
  def destroy
    @tipo_lugar.destroy
    respond_to do |format|
      format.html { redirect_to tipo_lugars_url, notice: 'Tipo lugar se elimino correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_lugar
      @tipo_lugar = TipoLugar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_lugar_params
      params.require(:tipo_lugar).permit(:nombre_tipo)
    end
end
