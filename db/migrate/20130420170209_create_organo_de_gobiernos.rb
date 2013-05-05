class CreateOrganoDeGobiernos < ActiveRecord::Migration
  def change
    create_table :organo_de_gobiernos do |t|
      t.string :nom_organo
      t.integer :tipo_organo_de_gobierno_id

      t.timestamps
    end
  end
end
