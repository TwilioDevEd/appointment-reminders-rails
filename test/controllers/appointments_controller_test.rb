require 'test_helper'

class AppointmentsControllerTest < ActionController::TestCase
  setup do
    @appointment = appointments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appointments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appointment" do
    assert_difference('Appointment.count') do
      Appointment.skip_callback(:create, :after, :reminder)
      post :create, params: {appointment: { name: @appointment.name, phone_number: @appointment.phone_number, time: @appointment.time }}
    end

    assert_redirected_to appointment_path(assigns(:appointment))
  end

  test "should show appointment" do
    get :show, params: { id: @appointment }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @appointment }
    assert_response :success
  end

  test "should update appointment" do
    patch :update, params: { id: @appointment, appointment: { name: @appointment.name, phone_number: @appointment.phone_number, time: @appointment.time } }
    assert_redirected_to appointment_path(assigns(:appointment))
  end

  test "should destroy appointment" do
    assert_difference('Appointment.count', -1) do
      delete :destroy, params: { id: @appointment }
    end

    assert_redirected_to appointments_path
  end
end
