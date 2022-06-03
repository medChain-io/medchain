require "application_system_test_case"

class PayersTest < ApplicationSystemTestCase
  setup do
    @payer = payers(:one)
  end

  test "visiting the index" do
    visit payers_url
    assert_selector "h1", text: "Payers"
  end

  test "creating a Payer" do
    visit payers_url
    click_on "New Payer"

    fill_in "Name", with: @payer.name
    click_on "Create Payer"

    assert_text "Payer was successfully created"
    click_on "Back"
  end

  test "updating a Payer" do
    visit payers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @payer.name
    click_on "Update Payer"

    assert_text "Payer was successfully updated"
    click_on "Back"
  end

  test "destroying a Payer" do
    visit payers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payer was successfully destroyed"
  end
end
