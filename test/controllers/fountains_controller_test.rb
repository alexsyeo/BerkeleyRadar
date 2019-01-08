require 'test_helper'

class FountainsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get fountains_new_url
    assert_response :success
  end

  test "should get create" do
    get fountains_create_url
    assert_response :success
  end

  test "should get edit" do
    get fountains_edit_url
    assert_response :success
  end

  test "should get update" do
    get fountains_update_url
    assert_response :success
  end

end
