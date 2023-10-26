class SeededPlantCareTasksController < ApplicationController
  before_action :set_seeded_plant_care_task, only: %i[ show update destroy ]

  # GET /seeded_plant_care_tasks
  def index
    @seeded_plant_care_tasks = SeededPlantCareTask.all

    render json: @seeded_plant_care_tasks
  end

  # GET /seeded_plant_care_tasks/1
  def show
    render json: @seeded_plant_care_task
  end

  # POST /seeded_plant_care_tasks
  def create
    @seeded_plant_care_task = SeededPlantCareTask.new(seeded_plant_care_task_params)

    if @seeded_plant_care_task.save
      render json: @seeded_plant_care_task, status: :created, location: @seeded_plant_care_task
    else
      render json: @seeded_plant_care_task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /seeded_plant_care_tasks/1
  def update
    if @seeded_plant_care_task.update(seeded_plant_care_task_params)
      render json: @seeded_plant_care_task
    else
      render json: @seeded_plant_care_task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /seeded_plant_care_tasks/1
  def destroy
    @seeded_plant_care_task.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seeded_plant_care_task
      @seeded_plant_care_task = SeededPlantCareTask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def seeded_plant_care_task_params
      params.fetch(:seeded_plant_care_task, {})
    end
end
