class CreateSesions < ActiveRecord::Migration
  def change
    create_table :sesions do |t|
      t.boolean :status
      t.datetime :fecha
      t.time :hora
      t.text :lugar
      t.boolean :extra_ordinaria
      t.references :entidad_paraestatal
      t.references :suplente

      t.timestamps
    end
    add_index :sesions, :entidad_paraestatal_id
    add_index :sesions, :suplente_id
  end
end
