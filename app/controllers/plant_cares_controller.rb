class PlantCaresController < ApplicationController
  before_action :set_plant_care, only: %i[ show update destroy ]

  # GET /plant_cares
  def index
    @plant_cares = PlantCare.all

    render json: @plant_cares
  end

  # GET /plant_cares/1
  def show
    render json: @plant_care
  end

  # POST /plant_cares
  def create
    @plant_care = PlantCare.new(plant_care_params)

    if @plant_care.save
      render json: @plant_care, status: :created, location: @plant_care
    else
      render json: @plant_care.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plant_cares/1
  def update
    if @plant_care.update(plant_care_params)
      render json: @plant_care
    else
      render json: @plant_care.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plant_cares/1
  def destroy
    @plant_care.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_care
      @plant_care = PlantCare.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plant_care_params
      params.fetch(:plant_care, {})
    end
end
