class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
  end

  private
    def product_params
      params.require(:product).permit(:title, :description, :image_url, :price)
    end
end