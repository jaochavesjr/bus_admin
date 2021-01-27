require "test_helper"

class Admins::TravelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_travels_index_url
    assert_response :success
  end

  test "should get new" do
    get admins_travels_new_url
    assert_response :success
  end

  test "should get create" do
    get admins_travels_create_url
    assert_response :success
  end

  test "should get edit" do
    get admins_travels_edit_url
    assert_response :success
  end

  test "should get update" do
    get admins_travels_update_url
    assert_response :success
  end
end