require "test_helper"

class VagaTest < ActiveSupport::TestCase

 test "vaga attributes must not be empty" do
    vaga = Vaga.new
    assert vaga.invalid?
    assert vaga.errors[:empresa].any?
    assert vaga.errors[:titulo].any?
    assert vaga.errors[:localizacao].any?
    assert vaga.errors[:contrato].any?
    assert vaga.errors[:jornada].any?
    assert vaga.errors[:local].any?
    assert vaga.errors[:link].any?
    assert vaga.errors[:descricao].any?
  end

  # test "the truth" do
  #   assert true
  # end
end
