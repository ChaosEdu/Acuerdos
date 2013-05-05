class CreateSuplentes < ActiveRecord::Migration
  def change
    create_table :suplentes do |t|
      t.references :empleado
      t.references :entidad_paraestatal
      t.references :gestion
      t.references :sesion

      t.timestamps
    end
    add_index :suplentes, :empleado_id
    add_index :suplentes, :entidad_paraestatal_id
    add_index :suplentes, :gestion_id

  end
end
