require 'test_helper'

class BathroomsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bathrooms_new_url
    assert_response :success
  end

  test "should get create" do
    get bathrooms_create_url
    assert_response :success
  end

  test "should get edit" do
    get bathrooms_edit_url
    assert_response :success
  end

  test "should get up" do
    get bathrooms_up_url
    assert_response :success
  end

  test "should get update" do
    get bathrooms_update_url
    assert_response :success
  end

end
