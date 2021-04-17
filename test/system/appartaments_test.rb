require "application_system_test_case"

class AppartamentsTest < ApplicationSystemTestCase
  setup do
    @appartament = appartaments(:one)
  end

  test "visiting the index" do
    visit appartaments_url
    assert_selector "h1", text: "Appartaments"
  end

  test "creating a Appartament" do
    visit appartaments_url
    click_on "New Appartament"

    fill_in "Address", with: @appartament.address
    fill_in "Beds", with: @appartament.beds
    fill_in "Cost", with: @appartament.cost
    fill_in "Name", with: @appartament.name
    fill_in "Phone", with: @appartament.phone
    fill_in "Place", with: @appartament.place
    fill_in "Site", with: @appartament.site
    click_on "Create Appartament"

    assert_text "Appartament was successfully created"
    click_on "Back"
  end

  test "updating a Appartament" do
    visit appartaments_url
    click_on "Edit", match: :first

    fill_in "Address", with: @appartament.address
    fill_in "Beds", with: @appartament.beds
    fill_in "Cost", with: @appartament.cost
    fill_in "Name", with: @appartament.name
    fill_in "Phone", with: @appartament.phone
    fill_in "Place", with: @appartament.place
    fill_in "Site", with: @appartament.site
    click_on "Update Appartament"

    assert_text "Appartament was successfully updated"
    click_on "Back"
  end

  test "destroying a Appartament" do
    visit appartaments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appartament was successfully destroyed"
  end
end
