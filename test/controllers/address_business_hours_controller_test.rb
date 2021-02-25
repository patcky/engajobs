require 'test_helper'

class AddressBusinessHoursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get address_business_hours_index_url
    assert_response :success
  end

  test "should get new" do
    get address_business_hours_new_url
    assert_response :success
  end

  test "should get create" do
    get address_business_hours_create_url
    assert_response :success
  end

  test "should get show" do
    get address_business_hours_show_url
    assert_response :success
  end

  test "should get edit" do
    get address_business_hours_edit_url
    assert_response :success
  end

  test "should get update" do
    get address_business_hours_update_url
    assert_response :success
  end

  test "should get destroy" do
    get address_business_hours_destroy_url
    assert_response :success
  end

end
