require 'test_helper'

class SigneesControllerTest < ActionController::TestCase
  setup do
    @signee = signees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:signees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create signee" do
    assert_difference('Signee.count') do
      post :create, signee: { email: @signee.email }
    end

    assert_redirected_to signee_path(assigns(:signee))
  end

  test "should show signee" do
    get :show, id: @signee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @signee
    assert_response :success
  end

  test "should update signee" do
    put :update, id: @signee, signee: { email: @signee.email }
    assert_redirected_to signee_path(assigns(:signee))
  end

  test "should destroy signee" do
    assert_difference('Signee.count', -1) do
      delete :destroy, id: @signee
    end

    assert_redirected_to signees_path
  end
end
