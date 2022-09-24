class CreateVagas < ActiveRecord::Migration[6.1]
  def change
    create_table :vagas do |t|
      t.string :empresa
      t.string :titulo
      t.string :localizacao
      t.string :contrato
      t.string :jornada
      t.string :local
      t.string :link
      t.text :descricao

      t.timestamps
    end
  end
end
