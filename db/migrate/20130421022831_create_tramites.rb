class CreateTramites < ActiveRecord::Migration
  def change
    create_table :tramites do |t|
      t.string :nombre_doc
      t.integer :entidad_paraestatal_id

      t.timestamps
    end
  end
end
