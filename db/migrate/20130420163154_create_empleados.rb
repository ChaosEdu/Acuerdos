class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :ap_paterno
      t.string :ap_materno
      t.integer :puestos_entidad_id
      t.string :dir_trabajo
      t.string :jefe_inmediato
      t.boolean :activo
      t.integer :tipo_usuario_id
      t.integer :entidad_paraestatal_id

      t.timestamps
    end
  end
end
