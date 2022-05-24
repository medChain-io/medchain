class TreatmentActionsController < ApplicationController
  before_action :set_treatment_action, only: %i[ show edit update destroy ]

  # GET /treatment_actions or /treatment_actions.json
  def index
    @treatment_actions = TreatmentAction.all
  end

  # GET /treatment_actions/1 or /treatment_actions/1.json
  def show
  end

  # GET /treatment_actions/new
  def new
    @treatment_action = TreatmentAction.new
  end

  # GET /treatment_actions/1/edit
  def edit
  end

  # POST /treatment_actions or /treatment_actions.json
  def create
    @treatment_action = TreatmentAction.new(treatment_action_params)

    respond_to do |format|
      if @treatment_action.save
        format.html { redirect_to treatment_action_url(@treatment_action), notice: "Treatment action was successfully created." }
        format.json { render :show, status: :created, location: @treatment_action }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @treatment_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treatment_actions/1 or /treatment_actions/1.json
  def update
    respond_to do |format|
      if @treatment_action.update(treatment_action_params)
        format.html { redirect_to treatment_action_url(@treatment_action), notice: "Treatment action was successfully updated." }
        format.json { render :show, status: :ok, location: @treatment_action }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @treatment_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treatment_actions/1 or /treatment_actions/1.json
  def destroy
    @treatment_action.destroy

    respond_to do |format|
      format.html { redirect_to treatment_actions_url, notice: "Treatment action was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treatment_action
      @treatment_action = TreatmentAction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def treatment_action_params
      params.require(:treatment_action).permit(:code, :action)
    end
end
