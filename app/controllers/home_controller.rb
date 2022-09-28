class HomeController < ApplicationController
  skip_before_action :authorize
  def index
    @vagas = Vaga.order(:titulo)
  end
end
