class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :correo
      t.integer :tipo_email_id
      t.integer :empleado_id

      t.timestamps
    end
  end
end
