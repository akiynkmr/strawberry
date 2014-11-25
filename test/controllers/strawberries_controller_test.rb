require 'test_helper'

class StrawberriesControllerTest < ActionController::TestCase
  setup do
    @strawberry = strawberries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:strawberries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create strawberry" do
    assert_difference('Strawberry.count') do
      post :create, strawberry: { body: @strawberry.body, title: @strawberry.title }
    end

    assert_redirected_to strawberry_path(assigns(:strawberry))
  end

  test "should show strawberry" do
    get :show, id: @strawberry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @strawberry
    assert_response :success
  end

  test "should update strawberry" do
    patch :update, id: @strawberry, strawberry: { body: @strawberry.body, title: @strawberry.title }
    assert_redirected_to strawberry_path(assigns(:strawberry))
  end

  test "should destroy strawberry" do
    assert_difference('Strawberry.count', -1) do
      delete :destroy, id: @strawberry
    end

    assert_redirected_to strawberries_path
  end
end
