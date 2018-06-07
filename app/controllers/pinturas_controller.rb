class PinturasController < ApplicationController
  before_action :set_pintura, only: [:show, :edit, :update, :destroy]


  def existe?(color)
    if MateriaPrima.exists?(color: color.capitalize)
        return 'si'
    else
        return 'no'
    end
  end
  #if 
  
  # GET /pinturas
  # GET /pinturas.json
  def index
    @pinturas = Pintura.all
  end

  # GET /pinturas/1
  # GET /pinturas/1.json
  def show
  end

  # GET /pinturas/new
  def new
      @pintura = Pintura.new
  end

  # GET /pinturas/1/edit
  def edit
  end

  # POST /pinturas
  # POST /pinturas.json
  def create
   
    @pintura = Pintura.new(pintura_params)
   

    respond_to do |format|
      if @pintura.save
        format.html { redirect_to @pintura, notice: 'Pintura was successfully created.' }
        format.json { render :show, status: :created, location: @pintura }
      else
        format.html { render :new }
        format.json { render json: @pintura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pinturas/1
  # PATCH/PUT /pinturas/1.json
  def update
    respond_to do |format|
      if @pintura.update(pintura_params)
        format.html { redirect_to @pintura, notice: 'Pintura was successfully updated.' }
        format.json { render :show, status: :ok, location: @pintura }
      else
        format.html { render :edit }
        format.json { render json: @pintura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pinturas/1
  # DELETE /pinturas/1.json
  def destroy
    @pintura.destroy
    respond_to do |format|
      format.html { redirect_to pinturas_url, notice: 'Pintura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pintura
      @pintura = Pintura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pintura_params
      params.require(:pintura).permit(:id_pintura, :color, :materia_1, :materia2, :materia3)
    end
end
