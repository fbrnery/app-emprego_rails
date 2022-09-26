class HomeController < ApplicationController
  def index
    @vagas = Vaga.order(:titulo)
  end
end
