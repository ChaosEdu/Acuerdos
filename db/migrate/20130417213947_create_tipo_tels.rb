class CreateTipoTels < ActiveRecord::Migration
  def change
    create_table :tipo_tels do |t|
      t.string :nom_tipo_tel

      t.timestamps
    end
  end
end
