class PayerPlansController < ApplicationController
  before_action :set_payer_plan, only: %i[ show edit update destroy ]

  # GET /payer_plans or /payer_plans.json
  def index
    @payer_plans = PayerPlan.all
  end

  # GET /payer_plans/1 or /payer_plans/1.json
  def show
  end

  # GET /payer_plans/new
  def new
    @payer_plan = PayerPlan.new
  end

  # GET /payer_plans/1/edit
  def edit
  end

  # POST /payer_plans or /payer_plans.json
  def create
    @payer_plan = PayerPlan.new(payer_plan_params)

    respond_to do |format|
      if @payer_plan.save
        format.html { redirect_to payer_plan_url(@payer_plan), notice: "Payer plan was successfully created." }
        format.json { render :show, status: :created, location: @payer_plan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payer_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payer_plans/1 or /payer_plans/1.json
  def update
    respond_to do |format|
      if @payer_plan.update(payer_plan_params)
        format.html { redirect_to payer_plan_url(@payer_plan), notice: "Payer plan was successfully updated." }
        format.json { render :show, status: :ok, location: @payer_plan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payer_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payer_plans/1 or /payer_plans/1.json
  def destroy
    @payer_plan.destroy

    respond_to do |format|
      format.html { redirect_to payer_plans_url, notice: "Payer plan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payer_plan
      @payer_plan = PayerPlan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payer_plan_params
      params.require(:payer_plan).permit(:name, :payer_id)
    end
end
