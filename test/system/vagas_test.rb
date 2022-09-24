require "application_system_test_case"

class VagasTest < ApplicationSystemTestCase
  setup do
    @vaga = vagas(:one)
  end

  test "visiting the index" do
    visit vagas_url
    assert_selector "h1", text: "Vagas"
  end

  test "creating a Vaga" do
    visit vagas_url
    click_on "New Vaga"

    fill_in "Contrato", with: @vaga.contrato
    fill_in "Descricao", with: @vaga.descricao
    fill_in "Empresa", with: @vaga.empresa
    fill_in "Jornada", with: @vaga.jornada
    fill_in "Link", with: @vaga.link
    fill_in "Local", with: @vaga.local
    fill_in "Localizacao", with: @vaga.localizacao
    fill_in "Titulo", with: @vaga.titulo
    click_on "Create Vaga"

    assert_text "Vaga was successfully created"
    click_on "Back"
  end

  test "updating a Vaga" do
    visit vagas_url
    click_on "Edit", match: :first

    fill_in "Contrato", with: @vaga.contrato
    fill_in "Descricao", with: @vaga.descricao
    fill_in "Empresa", with: @vaga.empresa
    fill_in "Jornada", with: @vaga.jornada
    fill_in "Link", with: @vaga.link
    fill_in "Local", with: @vaga.local
    fill_in "Localizacao", with: @vaga.localizacao
    fill_in "Titulo", with: @vaga.titulo
    click_on "Update Vaga"

    assert_text "Vaga was successfully updated"
    click_on "Back"
  end

  test "destroying a Vaga" do
    visit vagas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vaga was successfully destroyed"
  end
end
