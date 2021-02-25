require 'test_helper'

class SpecialtiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get specialties_index_url
    assert_response :success
  end

  test "should get new" do
    get specialties_new_url
    assert_response :success
  end

  test "should get create" do
    get specialties_create_url
    assert_response :success
  end

  test "should get show" do
    get specialties_show_url
    assert_response :success
  end

  test "should get edit" do
    get specialties_edit_url
    assert_response :success
  end

  test "should get update" do
    get specialties_update_url
    assert_response :success
  end

  test "should get destroy" do
    get specialties_destroy_url
    assert_response :success
  end

end
