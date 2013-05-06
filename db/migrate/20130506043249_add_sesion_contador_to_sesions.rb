class AddSesionContadorToSesions < ActiveRecord::Migration
  def change
    add_column :sesions, :sesion_contador, :integer, default: 1
  end
end
