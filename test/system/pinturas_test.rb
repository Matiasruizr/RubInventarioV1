require "application_system_test_case"

class PinturasTest < ApplicationSystemTestCase
  setup do
    @pintura = pinturas(:one)
  end

  test "visiting the index" do
    visit pinturas_url
    assert_selector "h1", text: "Pinturas"
  end

  test "creating a Pintura" do
    visit pinturas_url
    click_on "New Pintura"

    fill_in "Color", with: @pintura.color
    fill_in "Id Pintura", with: @pintura.id_pintura
    fill_in "Materia2", with: @pintura.materia2
    fill_in "Materia3", with: @pintura.materia3
    fill_in "Materia 1", with: @pintura.materia_1
    click_on "Create Pintura"

    assert_text "Pintura was successfully created"
    click_on "Back"
  end

  test "updating a Pintura" do
    visit pinturas_url
    click_on "Edit", match: :first

    fill_in "Color", with: @pintura.color
    fill_in "Id Pintura", with: @pintura.id_pintura
    fill_in "Materia2", with: @pintura.materia2
    fill_in "Materia3", with: @pintura.materia3
    fill_in "Materia 1", with: @pintura.materia_1
    click_on "Update Pintura"

    assert_text "Pintura was successfully updated"
    click_on "Back"
  end

  test "destroying a Pintura" do
    visit pinturas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pintura was successfully destroyed"
  end
end
