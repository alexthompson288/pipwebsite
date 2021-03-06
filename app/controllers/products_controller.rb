class ProductsController < ApplicationController
  before_action :set_product, only: :show

  def show
    @products = Product.all
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end
end
