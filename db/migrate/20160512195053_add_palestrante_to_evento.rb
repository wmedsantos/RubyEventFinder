class AddPalestranteToEvento < ActiveRecord::Migration
  def change
    add_column :eventos, :palestrante, :string
  end
end
