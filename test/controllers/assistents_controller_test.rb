require 'test_helper'

class AssistentsControllerTest < ActionController::TestCase
  setup do
    @assistent = assistents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assistents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assistent" do
    assert_difference('Assistent.count') do
      post :create, assistent: { address: @assistent.address, email: @assistent.email, first_names: @assistent.first_names, hire_date: @assistent.hire_date, last_names: @assistent.last_names, phone_number: @assistent.phone_number }
    end

    assert_redirected_to assistent_path(assigns(:assistent))
  end

  test "should show assistent" do
    get :show, id: @assistent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assistent
    assert_response :success
  end

  test "should update assistent" do
    patch :update, id: @assistent, assistent: { address: @assistent.address, email: @assistent.email, first_names: @assistent.first_names, hire_date: @assistent.hire_date, last_names: @assistent.last_names, phone_number: @assistent.phone_number }
    assert_redirected_to assistent_path(assigns(:assistent))
  end

  test "should destroy assistent" do
    assert_difference('Assistent.count', -1) do
      delete :destroy, id: @assistent
    end

    assert_redirected_to assistents_path
  end
end
