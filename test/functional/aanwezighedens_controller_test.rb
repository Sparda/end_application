require 'test_helper'

class AanwezighedensControllerTest < ActionController::TestCase
  setup do
    @aanwezigheden = aanwezighedens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aanwezighedens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aanwezigheden" do
    assert_difference('Aanwezigheden.count') do
      post :create, :aanwezigheden => @aanwezigheden.attributes
    end

    assert_redirected_to aanwezigheden_path(assigns(:aanwezigheden))
  end

  test "should show aanwezigheden" do
    get :show, :id => @aanwezigheden.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @aanwezigheden.to_param
    assert_response :success
  end

  test "should update aanwezigheden" do
    put :update, :id => @aanwezigheden.to_param, :aanwezigheden => @aanwezigheden.attributes
    assert_redirected_to aanwezigheden_path(assigns(:aanwezigheden))
  end

  test "should destroy aanwezigheden" do
    assert_difference('Aanwezigheden.count', -1) do
      delete :destroy, :id => @aanwezigheden.to_param
    end

    assert_redirected_to aanwezighedens_path
  end
end
