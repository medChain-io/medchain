require "application_system_test_case"

class CarePlansTest < ApplicationSystemTestCase
  setup do
    @care_plan = care_plans(:one)
  end

  test "visiting the index" do
    visit care_plans_url
    assert_selector "h1", text: "Care Plans"
  end

  test "creating a Care plan" do
    visit care_plans_url
    click_on "New Care Plan"

    fill_in "Date", with: @care_plan.date
    fill_in "Fee schedule", with: @care_plan.fee_schedule_id
    fill_in "Patient", with: @care_plan.patient_id
    fill_in "Status", with: @care_plan.status_id
    click_on "Create Care plan"

    assert_text "Care plan was successfully created"
    click_on "Back"
  end

  test "updating a Care plan" do
    visit care_plans_url
    click_on "Edit", match: :first

    fill_in "Date", with: @care_plan.date
    fill_in "Fee schedule", with: @care_plan.fee_schedule_id
    fill_in "Patient", with: @care_plan.patient_id
    fill_in "Status", with: @care_plan.status_id
    click_on "Update Care plan"

    assert_text "Care plan was successfully updated"
    click_on "Back"
  end

  test "destroying a Care plan" do
    visit care_plans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Care plan was successfully destroyed"
  end
end
