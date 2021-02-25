require 'test_helper'

class ProfileContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profile_contacts_index_url
    assert_response :success
  end

  test "should get new" do
    get profile_contacts_new_url
    assert_response :success
  end

  test "should get create" do
    get profile_contacts_create_url
    assert_response :success
  end

  test "should get show" do
    get profile_contacts_show_url
    assert_response :success
  end

  test "should get edit" do
    get profile_contacts_edit_url
    assert_response :success
  end

  test "should get update" do
    get profile_contacts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get profile_contacts_destroy_url
    assert_response :success
  end

end
