require 'test_helper'

class CartItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get userIndex" do
    get cart_items_userIndex_url
    assert_response :success
  end

  test "should get new" do
    get cart_items_new_url
    assert_response :success
  end

  test "should get create" do
    get cart_items_create_url
    assert_response :success
  end

  test "should get edit" do
    get cart_items_edit_url
    assert_response :success
  end

  test "should get update" do
    get cart_items_update_url
    assert_response :success
  end

  test "should get delete" do
    get cart_items_delete_url
    assert_response :success
  end

end
