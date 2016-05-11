class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nome
      t.string :descricao
      t.datetime :datainicio
      t.datetime :datafim
      t.string :local
      t.string :endereco
      t.string :site
      t.integer :vagasdisponiveis

      t.timestamps null: false
    end
  end
end
