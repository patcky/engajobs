require 'test_helper'

class ProviderSpecialtiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get provider_specialties_index_url
    assert_response :success
  end

  test "should get new" do
    get provider_specialties_new_url
    assert_response :success
  end

  test "should get create" do
    get provider_specialties_create_url
    assert_response :success
  end

  test "should get show" do
    get provider_specialties_show_url
    assert_response :success
  end

  test "should get edit" do
    get provider_specialties_edit_url
    assert_response :success
  end

  test "should get update" do
    get provider_specialties_update_url
    assert_response :success
  end

  test "should get destroy" do
    get provider_specialties_destroy_url
    assert_response :success
  end

end
