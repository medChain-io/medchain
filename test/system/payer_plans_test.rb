require "application_system_test_case"

class PayerPlansTest < ApplicationSystemTestCase
  setup do
    @payer_plan = payer_plans(:one)
  end

  test "visiting the index" do
    visit payer_plans_url
    assert_selector "h1", text: "Payer Plans"
  end

  test "creating a Payer plan" do
    visit payer_plans_url
    click_on "New Payer Plan"

    fill_in "Name", with: @payer_plan.name
    fill_in "Payer", with: @payer_plan.payer_id
    click_on "Create Payer plan"

    assert_text "Payer plan was successfully created"
    click_on "Back"
  end

  test "updating a Payer plan" do
    visit payer_plans_url
    click_on "Edit", match: :first

    fill_in "Name", with: @payer_plan.name
    fill_in "Payer", with: @payer_plan.payer_id
    click_on "Update Payer plan"

    assert_text "Payer plan was successfully updated"
    click_on "Back"
  end

  test "destroying a Payer plan" do
    visit payer_plans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payer plan was successfully destroyed"
  end
end
