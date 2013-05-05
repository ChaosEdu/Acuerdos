class CreateGestions < ActiveRecord::Migration
  def change
    create_table :gestions do |t|

      t.timestamps
    end
  end
end
