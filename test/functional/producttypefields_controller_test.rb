require 'test_helper'

class ProducttypefieldsControllerTest < ActionController::TestCase
  setup do
    @producttypefield = producttypefields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producttypefields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producttypefield" do
    assert_difference('Producttypefield.count') do
      post :create, producttypefield: { default: @producttypefield.default, fieldtype_id: @producttypefield.fieldtype_id, name: @producttypefield.name, producttype_id: @producttypefield.producttype_id, required: @producttypefield.required }
    end

    assert_redirected_to producttypefield_path(assigns(:producttypefield))
  end

  test "should show producttypefield" do
    get :show, id: @producttypefield
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producttypefield
    assert_response :success
  end

  test "should update producttypefield" do
    put :update, id: @producttypefield, producttypefield: { default: @producttypefield.default, fieldtype_id: @producttypefield.fieldtype_id, name: @producttypefield.name, producttype_id: @producttypefield.producttype_id, required: @producttypefield.required }
    assert_redirected_to producttypefield_path(assigns(:producttypefield))
  end

  test "should destroy producttypefield" do
    assert_difference('Producttypefield.count', -1) do
      delete :destroy, id: @producttypefield
    end

    assert_redirected_to producttypefields_path
  end
end
