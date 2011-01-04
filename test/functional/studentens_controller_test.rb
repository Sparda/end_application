require 'test_helper'

class StudentensControllerTest < ActionController::TestCase
  setup do
    @studenten = studentens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studentens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studenten" do
    assert_difference('Studenten.count') do
      post :create, :studenten => @studenten.attributes
    end

    assert_redirected_to studenten_path(assigns(:studenten))
  end

  test "should show studenten" do
    get :show, :id => @studenten.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @studenten.to_param
    assert_response :success
  end

  test "should update studenten" do
    put :update, :id => @studenten.to_param, :studenten => @studenten.attributes
    assert_redirected_to studenten_path(assigns(:studenten))
  end

  test "should destroy studenten" do
    assert_difference('Studenten.count', -1) do
      delete :destroy, :id => @studenten.to_param
    end

    assert_redirected_to studentens_path
  end
end
