class CreatePoste < ActiveRecord::Migration[7.0]
  def change
    create_table :postes do |t|
      t.string :nom_poste
      t.integer :nombre_emp 
      t.date :date_debut
      t.date :date_fin
      t.timestamps
      t.belongs_to :user , foreign_key: true

    end
  end
end

