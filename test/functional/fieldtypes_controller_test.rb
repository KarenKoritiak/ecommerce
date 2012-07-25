require 'test_helper'

class FieldtypesControllerTest < ActionController::TestCase
  setup do
    @fieldtype = fieldtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fieldtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fieldtype" do
    assert_difference('Fieldtype.count') do
      post :create, fieldtype: { name: @fieldtype.name }
    end

    assert_redirected_to fieldtype_path(assigns(:fieldtype))
  end

  test "should show fieldtype" do
    get :show, id: @fieldtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fieldtype
    assert_response :success
  end

  test "should update fieldtype" do
    put :update, id: @fieldtype, fieldtype: { name: @fieldtype.name }
    assert_redirected_to fieldtype_path(assigns(:fieldtype))
  end

  test "should destroy fieldtype" do
    assert_difference('Fieldtype.count', -1) do
      delete :destroy, id: @fieldtype
    end

    assert_redirected_to fieldtypes_path
  end
end
