class CreateTipoUsuarios < ActiveRecord::Migration
  def change
    create_table :tipo_usuarios do |t|
      t.string :nom_usuario

      t.timestamps
    end
  end
end
