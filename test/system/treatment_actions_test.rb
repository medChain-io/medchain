require "application_system_test_case"

class TreatmentActionsTest < ApplicationSystemTestCase
  setup do
    @treatment_action = treatment_actions(:one)
  end

  test "visiting the index" do
    visit treatment_actions_url
    assert_selector "h1", text: "Treatment Actions"
  end

  test "creating a Treatment action" do
    visit treatment_actions_url
    click_on "New Treatment Action"

    fill_in "Action", with: @treatment_action.action
    fill_in "Code", with: @treatment_action.code
    click_on "Create Treatment action"

    assert_text "Treatment action was successfully created"
    click_on "Back"
  end

  test "updating a Treatment action" do
    visit treatment_actions_url
    click_on "Edit", match: :first

    fill_in "Action", with: @treatment_action.action
    fill_in "Code", with: @treatment_action.code
    click_on "Update Treatment action"

    assert_text "Treatment action was successfully updated"
    click_on "Back"
  end

  test "destroying a Treatment action" do
    visit treatment_actions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Treatment action was successfully destroyed"
  end
end
