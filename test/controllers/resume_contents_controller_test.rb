require "test_helper"

class ResumeContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resume_content = resume_contents(:one)
  end

  test "should get index" do
    get resume_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_resume_content_url
    assert_response :success
  end

  test "should create resume_content" do
    assert_difference("ResumeContent.count") do
      post resume_contents_url, params: { resume_content: { date: @resume_content.date, description: @resume_content.description, title: @resume_content.title, type: @resume_content.type } }
    end

    assert_redirected_to resume_content_url(ResumeContent.last)
  end

  test "should show resume_content" do
    get resume_content_url(@resume_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_resume_content_url(@resume_content)
    assert_response :success
  end

  test "should update resume_content" do
    patch resume_content_url(@resume_content), params: { resume_content: { date: @resume_content.date, description: @resume_content.description, title: @resume_content.title, type: @resume_content.type } }
    assert_redirected_to resume_content_url(@resume_content)
  end

  test "should destroy resume_content" do
    assert_difference("ResumeContent.count", -1) do
      delete resume_content_url(@resume_content)
    end

    assert_redirected_to resume_contents_url
  end
end
