class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: "Jungle", password: "book"
  def show
    @category = Category.count()
    @products = Product.count()
  end

end
