class CreateTipoEntidades < ActiveRecord::Migration
  def change
    create_table :tipo_entidades do |t|
      t.string :nom_tipo_entidad

      t.timestamps
    end
  end
end
