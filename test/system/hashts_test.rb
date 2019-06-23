require "application_system_test_case"

class HashtsTest < ApplicationSystemTestCase
  setup do
    @hasht = hashts(:one)
  end

  test "visiting the index" do
    visit hashts_url
    assert_selector "h1", text: "Hashts"
  end

  test "creating a Hasht" do
    visit hashts_url
    click_on "New Hasht"

    fill_in "Nombre", with: @hasht.nombre
    click_on "Create Hasht"

    assert_text "Hasht was successfully created"
    click_on "Back"
  end

  test "updating a Hasht" do
    visit hashts_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @hasht.nombre
    click_on "Update Hasht"

    assert_text "Hasht was successfully updated"
    click_on "Back"
  end

  test "destroying a Hasht" do
    visit hashts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hasht was successfully destroyed"
  end
end
