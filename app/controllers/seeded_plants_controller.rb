class SeededPlantsController < ApplicationController
  before_action :set_seeded_plant, only: %i[ show update destroy ]

  # GET /seeded_plants
  def index
    @seeded_plants = SeededPlant.all

    render json: @seeded_plants
  end

  # GET /seeded_plants/1
  def show
    render json: @seeded_plant
  end

  # POST /seeded_plants
  def create
    @seeded_plant = SeededPlant.new(seeded_plant_params)

    if @seeded_plant.save
      render json: @seeded_plant, status: :created, location: @seeded_plant
    else
      render json: @seeded_plant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /seeded_plants/1
  def update
    if @seeded_plant.update(seeded_plant_params)
      render json: @seeded_plant
    else
      render json: @seeded_plant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /seeded_plants/1
  def destroy
    @seeded_plant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seeded_plant
      @seeded_plant = SeededPlant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def seeded_plant_params
      params.fetch(:seeded_plant, {})
    end
end
