require "application_system_test_case"

class MwcLawsTest < ApplicationSystemTestCase
  setup do
    @mwc_law = mwc_laws(:one)
  end

  test "visiting the index" do
    visit mwc_laws_url
    assert_selector "h1", text: "Mwc Laws"
  end

  test "creating a Mwc law" do
    visit mwc_laws_url
    click_on "New Mwc Law"

    click_on "Create Mwc law"

    assert_text "Mwc law was successfully created"
    click_on "Back"
  end

  test "updating a Mwc law" do
    visit mwc_laws_url
    click_on "Edit", match: :first

    click_on "Update Mwc law"

    assert_text "Mwc law was successfully updated"
    click_on "Back"
  end

  test "destroying a Mwc law" do
    visit mwc_laws_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mwc law was successfully destroyed"
  end
end
