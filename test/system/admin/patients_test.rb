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
    fill_in "City", with: @admin_patient.city
    fill_in "Country", with: @admin_patient.country
    fill_in "County", with: @admin_patient.county
    fill_in "Dateofbirth", with: @admin_patient.dateOfBirth
    fill_in "Documenttype", with: @admin_patient.documentType
    fill_in "Email", with: @admin_patient.email
    fill_in "Ethnicity", with: @admin_patient.ethnicity
    fill_in "Externalpid", with: @admin_patient.externalPid
    fill_in "Gender", with: @admin_patient.gender
    fill_in "Mobile", with: @admin_patient.mobile
    fill_in "Paymenttype", with: @admin_patient.paymentType
    fill_in "Phone", with: @admin_patient.phone
    fill_in "Pid", with: @admin_patient.pid
    fill_in "Race", with: @admin_patient.race
    fill_in "Relateduuse", with: @admin_patient.relatedUuse
    fill_in "State", with: @admin_patient.state
    fill_in "Street", with: @admin_patient.street
    fill_in "Street2", with: @admin_patient.street2
    fill_in "User", with: @admin_patient.user_id
    fill_in "Zip", with: @admin_patient.zip
    click_on "Create Patient"

    assert_text "Patient was successfully created"
    click_on "Back"
  end

  test "updating a Patient" do
    visit admin_patients_url
    click_on "Edit", match: :first

    fill_in "Age", with: @admin_patient.age
    fill_in "City", with: @admin_patient.city
    fill_in "Country", with: @admin_patient.country
    fill_in "County", with: @admin_patient.county
    fill_in "Dateofbirth", with: @admin_patient.dateOfBirth
    fill_in "Documenttype", with: @admin_patient.documentType
    fill_in "Email", with: @admin_patient.email
    fill_in "Ethnicity", with: @admin_patient.ethnicity
    fill_in "Externalpid", with: @admin_patient.externalPid
    fill_in "Gender", with: @admin_patient.gender
    fill_in "Mobile", with: @admin_patient.mobile
    fill_in "Paymenttype", with: @admin_patient.paymentType
    fill_in "Phone", with: @admin_patient.phone
    fill_in "Pid", with: @admin_patient.pid
    fill_in "Race", with: @admin_patient.race
    fill_in "Relateduuse", with: @admin_patient.relatedUuse
    fill_in "State", with: @admin_patient.state
    fill_in "Street", with: @admin_patient.street
    fill_in "Street2", with: @admin_patient.street2
    fill_in "User", with: @admin_patient.user_id
    fill_in "Zip", with: @admin_patient.zip
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
