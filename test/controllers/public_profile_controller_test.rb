require 'test_helper'

class PublicProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_profile_index_url
    assert_response :success
  end

  test "should get new" do
    get public_profile_new_url
    assert_response :success
  end

  test "should get create" do
    get public_profile_create_url
    assert_response :success
  end

  test "should get show" do
    get public_profile_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_profile_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_profile_update_url
    assert_response :success
  end

  test "should get destroy" do
    get public_profile_destroy_url
    assert_response :success
  end

end
