require 'test_helper'

class TypographiesControllerTest < ActionController::TestCase
  setup do
    @typography = typographies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typographies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typography" do
    assert_difference('Typography.count') do
      post :create, typography: { source: @typography.source, title: @typography.title, url: @typography.url }
    end

    assert_redirected_to typography_path(assigns(:typography))
  end

  test "should show typography" do
    get :show, id: @typography
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typography
    assert_response :success
  end

  test "should update typography" do
    patch :update, id: @typography, typography: { source: @typography.source, title: @typography.title, url: @typography.url }
    assert_redirected_to typography_path(assigns(:typography))
  end

  test "should destroy typography" do
    assert_difference('Typography.count', -1) do
      delete :destroy, id: @typography
    end

    assert_redirected_to typographies_path
  end
end
