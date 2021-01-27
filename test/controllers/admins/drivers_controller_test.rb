require "test_helper"

class Admins::DriversControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_drivers_index_url
    assert_response :success
  end

  test "should get new" do
    get admins_drivers_new_url
    assert_response :success
  end

  test "should get create" do
    get admins_drivers_create_url
    assert_response :success
  end

  test "should get edit" do
    get admins_drivers_edit_url
    assert_response :success
  end

  test "should get update" do
    get admins_drivers_update_url
    assert_response :success
  end
end
