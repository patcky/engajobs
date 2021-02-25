require 'test_helper'

class AddressContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get address_contacts_index_url
    assert_response :success
  end

  test "should get new" do
    get address_contacts_new_url
    assert_response :success
  end

  test "should get create" do
    get address_contacts_create_url
    assert_response :success
  end

  test "should get show" do
    get address_contacts_show_url
    assert_response :success
  end

  test "should get edit" do
    get address_contacts_edit_url
    assert_response :success
  end

  test "should get update" do
    get address_contacts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get address_contacts_destroy_url
    assert_response :success
  end

end
