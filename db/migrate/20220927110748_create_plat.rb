class CreatePlat < ActiveRecord::Migration[7.0]
  def change
    create_table :plats do |t|
      t.string :nom_plat
      t.float :prix_unitaire
      t.timestamps
    end
  end
end