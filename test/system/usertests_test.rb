require "application_system_test_case"

class UsertestsTest < ApplicationSystemTestCase
  setup do
    @usertest = usertests(:one)
  end

  test "visiting the index" do
    visit usertests_url
    assert_selector "h1", text: "Usertests"
  end

  test "creating a Usertest" do
    visit usertests_url
    click_on "New Usertest"

    fill_in "Email", with: @usertest.email
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create Usertest"

    assert_text "Usertest was successfully created"
    click_on "Back"
  end

  test "updating a Usertest" do
    visit usertests_url
    click_on "Edit", match: :first

    fill_in "Email", with: @usertest.email
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Update Usertest"

    assert_text "Usertest was successfully updated"
    click_on "Back"
  end

  test "destroying a Usertest" do
    visit usertests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usertest was successfully destroyed"
  end
end
