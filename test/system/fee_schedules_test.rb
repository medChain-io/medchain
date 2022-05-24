require "application_system_test_case"

class FeeSchedulesTest < ApplicationSystemTestCase
  setup do
    @fee_schedule = fee_schedules(:one)
  end

  test "visiting the index" do
    visit fee_schedules_url
    assert_selector "h1", text: "Fee Schedules"
  end

  test "creating a Fee schedule" do
    visit fee_schedules_url
    click_on "New Fee Schedule"

    fill_in "Action", with: @fee_schedule.action
    fill_in "Cost", with: @fee_schedule.cost
    fill_in "Payer plan", with: @fee_schedule.payer_plan_id
    fill_in "Provider", with: @fee_schedule.provider_id
    fill_in "Treatment", with: @fee_schedule.treatment_id
    click_on "Create Fee schedule"

    assert_text "Fee schedule was successfully created"
    click_on "Back"
  end

  test "updating a Fee schedule" do
    visit fee_schedules_url
    click_on "Edit", match: :first

    fill_in "Action", with: @fee_schedule.action
    fill_in "Cost", with: @fee_schedule.cost
    fill_in "Payer plan", with: @fee_schedule.payer_plan_id
    fill_in "Provider", with: @fee_schedule.provider_id
    fill_in "Treatment", with: @fee_schedule.treatment_id
    click_on "Update Fee schedule"

    assert_text "Fee schedule was successfully updated"
    click_on "Back"
  end

  test "destroying a Fee schedule" do
    visit fee_schedules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fee schedule was successfully destroyed"
  end
end
