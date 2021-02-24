require 'test_helper'

class FavouritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get favourites_index_url
    assert_response :success
  end

  test "should get new" do
    get favourites_new_url
    assert_response :success
  end

  test "should get create" do
    get favourites_create_url
    assert_response :success
  end

  test "should get show" do
    get favourites_show_url
    assert_response :success
  end

  test "should get edit" do
    get favourites_edit_url
    assert_response :success
  end

  test "should get update" do
    get favourites_update_url
    assert_response :success
  end

  test "should get destroy" do
    get favourites_destroy_url
    assert_response :success
  end

end
