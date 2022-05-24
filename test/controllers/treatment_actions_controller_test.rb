require "test_helper"

class TreatmentActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @treatment_action = treatment_actions(:one)
  end

  test "should get index" do
    get treatment_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_treatment_action_url
    assert_response :success
  end

  test "should create treatment_action" do
    assert_difference('TreatmentAction.count') do
      post treatment_actions_url, params: { treatment_action: { action: @treatment_action.action, code: @treatment_action.code } }
    end

    assert_redirected_to treatment_action_url(TreatmentAction.last)
  end

  test "should show treatment_action" do
    get treatment_action_url(@treatment_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_treatment_action_url(@treatment_action)
    assert_response :success
  end

  test "should update treatment_action" do
    patch treatment_action_url(@treatment_action), params: { treatment_action: { action: @treatment_action.action, code: @treatment_action.code } }
    assert_redirected_to treatment_action_url(@treatment_action)
  end

  test "should destroy treatment_action" do
    assert_difference('TreatmentAction.count', -1) do
      delete treatment_action_url(@treatment_action)
    end

    assert_redirected_to treatment_actions_url
  end
end
