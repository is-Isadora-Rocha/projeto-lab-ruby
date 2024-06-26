require "application_system_test_case"

class MedicosTest < ApplicationSystemTestCase
  setup do
    @medico = medicos(:one)
  end

  test "visiting the index" do
    visit medicos_url
    assert_selector "h1", text: "Medicos"
  end

  test "should create medico" do
    visit medicos_url
    click_on "New medico"

    fill_in "Experience", with: @medico.experience
    fill_in "Name", with: @medico.name
    click_on "Create Medico"

    assert_text "Medico was successfully created"
    click_on "Back"
  end

  test "should update Medico" do
    visit medico_url(@medico)
    click_on "Edit this medico", match: :first

    fill_in "Experience", with: @medico.experience
    fill_in "Name", with: @medico.name
    click_on "Update Medico"

    assert_text "Medico was successfully updated"
    click_on "Back"
  end

  test "should destroy Medico" do
    visit medico_url(@medico)
    click_on "Destroy this medico", match: :first

    assert_text "Medico was successfully destroyed"
  end
end
