class CreateAvaliacoes < ActiveRecord::Migration
  def change
    create_table :avaliacoes do |t|
      t.integer :nota
      t.string :texto
      t.references :Evento, index: true, foreign_key: true
      t.references :Usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
