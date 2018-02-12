require 'test_helper'

class ProductCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_categories_index_url
    assert_response :success
  end

  test "should get show" do
    get product_categories_show_url
    assert_response :success
  end

end
