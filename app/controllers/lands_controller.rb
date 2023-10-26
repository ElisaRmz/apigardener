class LandsController < ApplicationController
  before_action :set_land, only: %i[ show update destroy ]

  # GET /lands
  def index
    @lands = Land.all

    render json: @lands
  end

  # GET /lands/1
  def show
    render json: @land
  end

  # POST /lands
  def create
    @land = Land.new(land_params)

    if @land.save
      render json: @land, status: :created, location: @land
    else
      render json: @land.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lands/1
  def update
    if @land.update(land_params)
      render json: @land
    else
      render json: @land.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lands/1
  def destroy
    @land.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_land
      @land = Land.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def land_params
      params.fetch(:land, {})
    end
end
