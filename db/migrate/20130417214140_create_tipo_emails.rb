class CreateTipoEmails < ActiveRecord::Migration
  def change
    create_table :tipo_emails do |t|
      t.string :nom_tipo_email

      t.timestamps
    end
  end
end
