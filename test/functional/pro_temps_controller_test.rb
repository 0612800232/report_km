require 'test_helper'

class ProTempsControllerTest < ActionController::TestCase
  setup do
    @pro_temp = pro_temps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pro_temps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pro_temp" do
    assert_difference('ProTemp.count') do
      post :create, :pro_temp => @pro_temp.attributes
    end

    assert_redirected_to pro_temp_path(assigns(:pro_temp))
  end

  test "should show pro_temp" do
    get :show, :id => @pro_temp.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pro_temp.to_param
    assert_response :success
  end

  test "should update pro_temp" do
    put :update, :id => @pro_temp.to_param, :pro_temp => @pro_temp.attributes
    assert_redirected_to pro_temp_path(assigns(:pro_temp))
  end

  test "should destroy pro_temp" do
    assert_difference('ProTemp.count', -1) do
      delete :destroy, :id => @pro_temp.to_param
    end

    assert_redirected_to pro_temps_path
  end
end
