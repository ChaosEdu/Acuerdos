class CreateEntidadParaestatals < ActiveRecord::Migration
  def change
    create_table :entidad_paraestatals do |t|
      t.text :nom_entidad
      t.text :objeto_social
      t.text :marco_normativo
      t.references :tipo_entidad
      t.references :organo_de_gobierno
      t.references :secretaria

      t.timestamps
    end
    add_index :entidad_paraestatals, :tipo_entidad_id
    add_index :entidad_paraestatals, :organo_de_gobierno_id
    add_index :entidad_paraestatals, :secretaria_id
  end
end
