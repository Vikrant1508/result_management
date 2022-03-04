require "application_system_test_case"

class ResultsTest < ApplicationSystemTestCase
  setup do
    @result = results(:one)
  end

  test "visiting the index" do
    visit results_url
    assert_selector "h1", text: "Results"
  end

  test "creating a Result" do
    visit results_url
    click_on "New Result"

    fill_in "Date of birth", with: @result.date_of_birth
    fill_in "Group", with: @result.group
    fill_in "Last name", with: @result.last_name
    fill_in "Marks", with: @result.marks
    fill_in "Name", with: @result.name
    fill_in "Subject", with: @result.subject
    click_on "Create Result"

    assert_text "Result was successfully created"
    click_on "Back"
  end

  test "updating a Result" do
    visit results_url
    click_on "Edit", match: :first

    fill_in "Date of birth", with: @result.date_of_birth
    fill_in "Group", with: @result.group
    fill_in "Last name", with: @result.last_name
    fill_in "Marks", with: @result.marks
    fill_in "Name", with: @result.name
    fill_in "Subject", with: @result.subject
    click_on "Update Result"

    assert_text "Result was successfully updated"
    click_on "Back"
  end

  test "destroying a Result" do
    visit results_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Result was successfully destroyed"
  end
end
