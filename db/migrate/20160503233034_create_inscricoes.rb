class CreateInscricoes < ActiveRecord::Migration
  def change
    create_table :inscricoes do |t|
      t.references :Evento, index: true, foreign_key: true
      t.references :Usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
