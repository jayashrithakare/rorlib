require 'test_helper'

class RubiesControllerTest < ActionController::TestCase
  setup do
    @ruby = rubies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rubies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ruby" do
    assert_difference('Ruby.count') do
      post :create, ruby: {  }
    end

    assert_redirected_to ruby_path(assigns(:ruby))
  end

  test "should show ruby" do
    get :show, id: @ruby
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ruby
    assert_response :success
  end

  test "should update ruby" do
    put :update, id: @ruby, ruby: {  }
    assert_redirected_to ruby_path(assigns(:ruby))
  end

  test "should destroy ruby" do
    assert_difference('Ruby.count', -1) do
      delete :destroy, id: @ruby
    end

    assert_redirected_to rubies_path
  end
end
