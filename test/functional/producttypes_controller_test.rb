require 'test_helper'

class ProducttypesControllerTest < ActionController::TestCase
  setup do
    @producttype = producttypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producttypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producttype" do
    assert_difference('Producttype.count') do
      post :create, producttype: { title: @producttype.title }
    end

    assert_redirected_to producttype_path(assigns(:producttype))
  end

  test "should show producttype" do
    get :show, id: @producttype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producttype
    assert_response :success
  end

  test "should update producttype" do
    put :update, id: @producttype, producttype: { title: @producttype.title }
    assert_redirected_to producttype_path(assigns(:producttype))
  end

  test "should destroy producttype" do
    assert_difference('Producttype.count', -1) do
      delete :destroy, id: @producttype
    end

    assert_redirected_to producttypes_path
  end
end
