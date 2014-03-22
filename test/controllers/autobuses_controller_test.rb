require 'test_helper'

class AutobusesControllerTest < ActionController::TestCase
  setup do
    @autobus = autobuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:autobuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create autobus" do
    assert_difference('Autobus.count') do
      post :create, autobus: { brand: @autobus.brand, capacity: @autobus.capacity, color: @autobus.color, license_plate: @autobus.license_plate, passenger_capacity: @autobus.passenger_capacity }
    end

    assert_redirected_to autobus_path(assigns(:autobus))
  end

  test "should show autobus" do
    get :show, id: @autobus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @autobus
    assert_response :success
  end

  test "should update autobus" do
    patch :update, id: @autobus, autobus: { brand: @autobus.brand, capacity: @autobus.capacity, color: @autobus.color, license_plate: @autobus.license_plate, passenger_capacity: @autobus.passenger_capacity }
    assert_redirected_to autobus_path(assigns(:autobus))
  end

  test "should destroy autobus" do
    assert_difference('Autobus.count', -1) do
      delete :destroy, id: @autobus
    end

    assert_redirected_to autobuses_path
  end
end
