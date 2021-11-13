require "application_system_test_case"

class Admin::PatientsTest < ApplicationSystemTestCase
  setup do
    @admin_patient = admin_patients(:one)
  end

  test "visiting the index" do
    visit admin_patients_url
    assert_selector "h1", text: "Admin/Patients"
  end

  test "creating a Patient" do
    visit admin_patients_url
    click_on "New Admin/Patient"

    fill_in "Age", with: @admin_patient.age
    fill_in "Email", with: @admin_patient.email
    fill_in "Firstname", with: @admin_patient.firstname
    fill_in "Gender", with: @admin_patient.gender
    fill_in "Lastname", with: @admin_patient.lastname
    click_on "Create Patient"

    assert_text "Patient was successfully created"
    click_on "Back"
  end

  test "updating a Patient" do
    visit admin_patients_url
    click_on "Edit", match: :first

    fill_in "Age", with: @admin_patient.age
    fill_in "Email", with: @admin_patient.email
    fill_in "Firstname", with: @admin_patient.firstname
    fill_in "Gender", with: @admin_patient.gender
    fill_in "Lastname", with: @admin_patient.lastname
    click_on "Update Patient"

    assert_text "Patient was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient" do
    visit admin_patients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient was successfully destroyed"
  end
end
