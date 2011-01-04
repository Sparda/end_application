require 'test_helper'

class LabosControllerTest < ActionController::TestCase
  setup do
    @labo = labos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:labos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create labo" do
    assert_difference('Labo.count') do
      post :create, :labo => @labo.attributes
    end

    assert_redirected_to labo_path(assigns(:labo))
  end

  test "should show labo" do
    get :show, :id => @labo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @labo.to_param
    assert_response :success
  end

  test "should update labo" do
    put :update, :id => @labo.to_param, :labo => @labo.attributes
    assert_redirected_to labo_path(assigns(:labo))
  end

  test "should destroy labo" do
    assert_difference('Labo.count', -1) do
      delete :destroy, :id => @labo.to_param
    end

    assert_redirected_to labos_path
  end
end
