require "application_system_test_case"

class ResumeContentsTest < ApplicationSystemTestCase
  setup do
    @resume_content = resume_contents(:one)
  end

  test "visiting the index" do
    visit resume_contents_url
    assert_selector "h1", text: "Resume contents"
  end

  test "should create resume content" do
    visit resume_contents_url
    click_on "New resume content"

    fill_in "Date", with: @resume_content.date
    fill_in "Description", with: @resume_content.description
    fill_in "Title", with: @resume_content.title
    fill_in "Type", with: @resume_content.type
    click_on "Create Resume content"

    assert_text "Resume content was successfully created"
    click_on "Back"
  end

  test "should update Resume content" do
    visit resume_content_url(@resume_content)
    click_on "Edit this resume content", match: :first

    fill_in "Date", with: @resume_content.date
    fill_in "Description", with: @resume_content.description
    fill_in "Title", with: @resume_content.title
    fill_in "Type", with: @resume_content.type
    click_on "Update Resume content"

    assert_text "Resume content was successfully updated"
    click_on "Back"
  end

  test "should destroy Resume content" do
    visit resume_content_url(@resume_content)
    click_on "Destroy this resume content", match: :first

    assert_text "Resume content was successfully destroyed"
  end
end
