class CreatePuestosEntidads < ActiveRecord::Migration
  def change
    create_table :puestos_entidads do |t|
      t.string :nom_puesto

      t.timestamps
    end
  end
end
