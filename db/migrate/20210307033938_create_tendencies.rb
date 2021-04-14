class CreateTendencies < ActiveRecord::Migration[6.1]
  def change
    create_table :tendencies do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
