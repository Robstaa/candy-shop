class ProductCategoriesController < ApplicationController
  def index
    @categories = ProductCategory.all
  end

  def show
    @category = ProductCategory.find(params[:id])
    @products = Product.where("product_category_id = ?", @category)
  end
end
