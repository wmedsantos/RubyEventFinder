class AddImagemToEvento < ActiveRecord::Migration
  def change
    add_column :eventos, :imagem, :string
  end
end
