require "test_helper"

class Admins::CarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_cars_index_url
    assert_response :success
  end

  test "should get new" do
    get admins_cars_new_url
    assert_response :success
  end

  test "should get create" do
    get admins_cars_create_url
    assert_response :success
  end

  test "should get edit" do
    get admins_cars_edit_url
    assert_response :success
  end

  test "should get update" do
    get admins_cars_update_url
    assert_response :success
  end
end
