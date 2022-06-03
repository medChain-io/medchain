class CarePlansController < ApplicationController
  before_action :set_care_plan, only: %i[ 
    show 
    edit 
    update 
    destroy 
    edit_status 
  ]

  # GET /care_plans or /care_plans.json
  def index
    @care_plans = CarePlan.all
  end

  # GET /care_plans/1 or /care_plans/1.json
  def show
  end

  # GET /care_plans/new
  def new
    @care_plan = CarePlan.new
  end

  # GET /care_plans/1/edit
  def edit
    respond_to do |format|
      format.js 
    end
  end

  def edit_status
    respond_to do |format|
      format.js 
    end
  end

  # POST /care_plans or /care_plans.json
  def create
    @care_plan = CarePlan.new(care_plan_params)

    respond_to do |format|
      if @care_plan.save
        format.html { redirect_to care_plan_url(@care_plan), notice: "Care plan was successfully created." }
        format.json { render :show, status: :created, location: @care_plan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @care_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /care_plans/1 or /care_plans/1.json
  def update
    respond_to do |format|
      if @care_plan.update(care_plan_params)
        format.html { redirect_to care_plan_url(@care_plan), notice: "Care plan was successfully updated." }
        format.json { render :show, status: :ok, location: @care_plan }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @care_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /care_plans/1 or /care_plans/1.json
  def destroy
    @care_plan.destroy

    respond_to do |format|
      format.html { redirect_to care_plans_url, notice: "Care plan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_care_plan
      @care_plan = CarePlan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def care_plan_params
      params.require(:care_plan).permit(:fee_schedule_id, :patient_id, :date, :status_id)
    end
end
