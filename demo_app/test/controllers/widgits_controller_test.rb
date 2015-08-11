require 'test_helper'

class WidgitsControllerTest < ActionController::TestCase
  setup do
    @widgit = widgits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:widgits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create widgit" do
    assert_difference('Widgit.count') do
      post :create, widgit: { description: @widgit.description, name: @widgit.name }
    end

    assert_redirected_to widgit_path(assigns(:widgit))
  end

  test "should show widgit" do
    get :show, id: @widgit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @widgit
    assert_response :success
  end

  test "should update widgit" do
    patch :update, id: @widgit, widgit: { description: @widgit.description, name: @widgit.name }
    assert_redirected_to widgit_path(assigns(:widgit))
  end

  test "should destroy widgit" do
    assert_difference('Widgit.count', -1) do
      delete :destroy, id: @widgit
    end

    assert_redirected_to widgits_path
  end
end
