class ProductsController < ApplicationController
  # unloadable

  before_action :set_product, :only => [:show, :edit, :update, :destroy]
  before_action :set_issues, :only => [:new, :edit]


  def index
    @products = Product.all.includes(:issue)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      set_issues
      render :new
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end


  def set_issues
    @issues = Issue.all
  end

  def product_params
    params.require(:product).permit(
      :name,
      :price,
      :quantity,
      :production_date,
      :issue_id
    )
  end
end
