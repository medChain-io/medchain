require "test_helper"

class PayerPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payer_plan = payer_plans(:one)
  end

  test "should get index" do
    get payer_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_payer_plan_url
    assert_response :success
  end

  test "should create payer_plan" do
    assert_difference('PayerPlan.count') do
      post payer_plans_url, params: { payer_plan: { name: @payer_plan.name, payer_id: @payer_plan.payer_id } }
    end

    assert_redirected_to payer_plan_url(PayerPlan.last)
  end

  test "should show payer_plan" do
    get payer_plan_url(@payer_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_payer_plan_url(@payer_plan)
    assert_response :success
  end

  test "should update payer_plan" do
    patch payer_plan_url(@payer_plan), params: { payer_plan: { name: @payer_plan.name, payer_id: @payer_plan.payer_id } }
    assert_redirected_to payer_plan_url(@payer_plan)
  end

  test "should destroy payer_plan" do
    assert_difference('PayerPlan.count', -1) do
      delete payer_plan_url(@payer_plan)
    end

    assert_redirected_to payer_plans_url
  end
end
