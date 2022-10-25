class TrainingRunsController < ApplicationController
  before_action :set_training_run, only: %i[ show edit update destroy ]

  # GET /training_runs or /training_runs.json
  def index
    @training_runs = TrainingRun.all
  end

  # GET /training_runs/1 or /training_runs/1.json
  def show
  end

  # GET /training_runs/new
  def new
    @training_run = TrainingRun.new
  end

  # GET /training_runs/1/edit
  def edit
  end

  # POST /training_runs or /training_runs.json
  def create
    @training_run = TrainingRun.new(training_run_params)

    respond_to do |format|
      if @training_run.save
        format.html { redirect_to training_run_url(@training_run), notice: "Training run was successfully created." }
        format.json { render :show, status: :created, location: @training_run }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @training_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_runs/1 or /training_runs/1.json
  def update
    respond_to do |format|
      if @training_run.update(training_run_params)
        format.html { redirect_to training_run_url(@training_run), notice: "Training run was successfully updated." }
        format.json { render :show, status: :ok, location: @training_run }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @training_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_runs/1 or /training_runs/1.json
  def destroy
    @training_run.destroy

    respond_to do |format|
      format.html { redirect_to training_runs_url, notice: "Training run was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_run
      @training_run = TrainingRun.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def training_run_params
      params.require(:training_run).permit(:training_run_name, :training_run_duration, :training_run_date, :training_run_description)
    end
end
