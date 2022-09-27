class CreateMatiere < ActiveRecord::Migration[7.0]
  def change
    create_table :matieres do |t|
      t.string :matiere_name
      t.integer :quantite_resté
      t.integer :quantite_actuelle
      t.integer :quantite_max
      t.integer :quantite_min
      t.date :date_fabrication
      t.date :date_fin_consomation
      t.string :nom_magasin
      t.integer :duree_stock
      t.float :prix_unitaire
      t.timestamps
    end
  end
end

