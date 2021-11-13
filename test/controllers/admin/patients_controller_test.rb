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
      post admin_patients_url, params: { admin_patient: { age: @admin_patient.age, city: @admin_patient.city, country: @admin_patient.country, county: @admin_patient.county, dateOfBirth: @admin_patient.dateOfBirth, documentType: @admin_patient.documentType, email: @admin_patient.email, ethnicity: @admin_patient.ethnicity, externalPid: @admin_patient.externalPid, gender: @admin_patient.gender, mobile: @admin_patient.mobile, paymentType: @admin_patient.paymentType, phone: @admin_patient.phone, pid: @admin_patient.pid, race: @admin_patient.race, relatedUuse: @admin_patient.relatedUuse, state: @admin_patient.state, street: @admin_patient.street, street2: @admin_patient.street2, user_id: @admin_patient.user_id, zip: @admin_patient.zip } }
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
    patch admin_patient_url(@admin_patient), params: { admin_patient: { age: @admin_patient.age, city: @admin_patient.city, country: @admin_patient.country, county: @admin_patient.county, dateOfBirth: @admin_patient.dateOfBirth, documentType: @admin_patient.documentType, email: @admin_patient.email, ethnicity: @admin_patient.ethnicity, externalPid: @admin_patient.externalPid, gender: @admin_patient.gender, mobile: @admin_patient.mobile, paymentType: @admin_patient.paymentType, phone: @admin_patient.phone, pid: @admin_patient.pid, race: @admin_patient.race, relatedUuse: @admin_patient.relatedUuse, state: @admin_patient.state, street: @admin_patient.street, street2: @admin_patient.street2, user_id: @admin_patient.user_id, zip: @admin_patient.zip } }
    assert_redirected_to admin_patient_url(@admin_patient)
  end

  test "should destroy admin_patient" do
    assert_difference('Admin::Patient.count', -1) do
      delete admin_patient_url(@admin_patient)
    end

    assert_redirected_to admin_patients_url
  end
end
