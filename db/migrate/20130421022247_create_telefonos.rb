class CreateTelefonos < ActiveRecord::Migration
  def change
    create_table :telefonos do |t|
      t.string :num_telefono
      t.integer :tipo_tel_id
      t.integer :empleado_id

      t.timestamps
    end
  end
end
