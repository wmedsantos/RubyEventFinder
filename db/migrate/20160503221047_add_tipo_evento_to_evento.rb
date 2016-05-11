class AddTipoEventoToEvento < ActiveRecord::Migration
  def change
    add_reference :eventos, :TipoEvento, index: true, foreign_key: true
  end
end
