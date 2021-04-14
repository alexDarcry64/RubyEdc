require "application_system_test_case"

class TendenciesTest < ApplicationSystemTestCase
  setup do
    @tendency = tendencies(:one)
  end

  test "visiting the index" do
    visit tendencies_url
    assert_selector "h1", text: "Tendencies"
  end

  test "creating a Tendency" do
    visit tendencies_url
    click_on "New Tendency"

    fill_in "Descripcion", with: @tendency.descripcion
    fill_in "Nombre", with: @tendency.nombre
    click_on "Create Tendency"

    assert_text "Tendency was successfully created"
    click_on "Back"
  end

  test "updating a Tendency" do
    visit tendencies_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @tendency.descripcion
    fill_in "Nombre", with: @tendency.nombre
    click_on "Update Tendency"

    assert_text "Tendency was successfully updated"
    click_on "Back"
  end

  test "destroying a Tendency" do
    visit tendencies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tendency was successfully destroyed"
  end
end
