require 'test_helper'

class TablePricesControllerTest < ActionController::TestCase
  setup do
    @table_price = table_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:table_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create table_price" do
    assert_difference('TablePrice.count') do
      post :create, table_price: @table_price.attributes
    end

    assert_redirected_to table_price_path(assigns(:table_price))
  end

  test "should show table_price" do
    get :show, id: @table_price.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @table_price.to_param
    assert_response :success
  end

  test "should update table_price" do
    put :update, id: @table_price.to_param, table_price: @table_price.attributes
    assert_redirected_to table_price_path(assigns(:table_price))
  end

  test "should destroy table_price" do
    assert_difference('TablePrice.count', -1) do
      delete :destroy, id: @table_price.to_param
    end

    assert_redirected_to table_prices_path
  end
end
