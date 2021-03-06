class GraphicsProcessingUnitsController < ApplicationController
  before_action :set_graphics_processing_unit, only: [:show, :edit, :update, :destroy]

  # GET /graphics_processing_units
  # GET /graphics_processing_units.json
  # shows all gpus in the index
  def index
    @graphics_processing_units = GraphicsProcessingUnit.all
  end

  # GET /graphics_processing_units/1
  # GET /graphics_processing_units/1.json
  def show
  end

  # GET /graphics_processing_units/new
  def new
    @graphics_processing_unit = GraphicsProcessingUnit.new
  end

  # GET /graphics_processing_units/1/edit
  def edit
  end

  # POST /graphics_processing_units
  # POST /graphics_processing_units.json
  # creates the gpu and redirects to the new gpu once created
  def create
    @graphics_processing_unit = GraphicsProcessingUnit.new(graphics_processing_unit_params)

    respond_to do |format|
      if @graphics_processing_unit.save
        format.html { redirect_to @graphics_processing_unit, notice: t('gpucon.gpucreate') }
        format.json { render :show, status: :created, location: @graphics_processing_unit }
      else
        format.html { render :new }
        format.json { render json: @graphics_processing_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graphics_processing_units/1
  # PATCH/PUT /graphics_processing_units/1.json
  #updates a gpu using form and redirects once completed
  def update
    respond_to do |format|
      if @graphics_processing_unit.update(graphics_processing_unit_params)
        format.html { redirect_to @graphics_processing_unit, notice: t('gpucon.gpuupdt') }
        format.json { render :show, status: :ok, location: @graphics_processing_unit }
      else
        format.html { render :edit }
        format.json { render json: @graphics_processing_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graphics_processing_units/1
  # DELETE /graphics_processing_units/1.json
  #deletes an entry in gpus table and redirects to gpu index
  def destroy
    @graphics_processing_unit.destroy
    respond_to do |format|
      format.html { redirect_to graphics_processing_units_url, notice: t('gpucon.gpudest') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graphics_processing_unit
      @graphics_processing_unit = GraphicsProcessingUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graphics_processing_unit_params
      params.require(:graphics_processing_unit).permit(:aftermarketmake, :chipmake, :chipmodel)
    end
end
