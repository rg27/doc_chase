require 'test_helper'

class Admin::PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_patient = admin_patients(:one)
  end

  test "should get index" do
    get admin_patients_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_patient_url
    assert_response :success
  end

  test "should create admin_patient" do
    assert_difference('Admin::Patient.count') do
      post admin_patients_url, params: { admin_patient: { age: @admin_patient.age, email: @admin_patient.email, firstname: @admin_patient.firstname, gender: @admin_patient.gender, lastname: @admin_patient.lastname } }
    end

    assert_redirected_to admin_patient_url(Admin::Patient.last)
  end

  test "should show admin_patient" do
    get admin_patient_url(@admin_patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_patient_url(@admin_patient)
    assert_response :success
  end

  test "should update admin_patient" do
    patch admin_patient_url(@admin_patient), params: { admin_patient: { age: @admin_patient.age, email: @admin_patient.email, firstname: @admin_patient.firstname, gender: @admin_patient.gender, lastname: @admin_patient.lastname } }
    assert_redirected_to admin_patient_url(@admin_patient)
  end

  test "should destroy admin_patient" do
    assert_difference('Admin::Patient.count', -1) do
      delete admin_patient_url(@admin_patient)
    end

    assert_redirected_to admin_patients_url
  end
end
