require File.expand_path('../../test_helper', __FILE__)

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end


  test 'should get index' do
    get products_url
    assert_response :success
  end

  test 'should create product' do
    product_params = {
      product: {
        :name => 'One',
        :price => 9.9,
        :quantity => 5,
        :issue_id => 1,
      }
    }

    assert_difference('Product.count') do
      post product_url, params: product_params
    end

    assert_redirected_to product_path(Product.last)
  end

  test 'should show product' do
    get article_url(@product)
    assert_response :success
  end

  test 'should destroy product' do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to product_path
  end
end
