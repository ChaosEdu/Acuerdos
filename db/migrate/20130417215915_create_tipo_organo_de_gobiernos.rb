class CreateTipoOrganoDeGobiernos < ActiveRecord::Migration
  def change
    create_table :tipo_organo_de_gobiernos do |t|
      t.string :nom_tipo_de_organo

      t.timestamps
    end
  end
end
