require 'test_helper'

class SaleListsControllerTest < ActionController::TestCase
  setup do
    @sale_list = sale_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sale_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale_list" do
    assert_difference('SaleList.count') do
      post :create, sale_list: { mwc_file_name: @sale_list.mwc_file_name, mwc_html: @sale_list.mwc_html }
    end

    assert_redirected_to sale_list_path(assigns(:sale_list))
  end

  test "should show sale_list" do
    get :show, id: @sale_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale_list
    assert_response :success
  end

  test "should update sale_list" do
    patch :update, id: @sale_list, sale_list: { mwc_file_name: @sale_list.mwc_file_name, mwc_html: @sale_list.mwc_html }
    assert_redirected_to sale_list_path(assigns(:sale_list))
  end

  test "should destroy sale_list" do
    assert_difference('SaleList.count', -1) do
      delete :destroy, id: @sale_list
    end

    assert_redirected_to sale_lists_path
  end
end
