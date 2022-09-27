class CreateMatierePlat < ActiveRecord::Migration[7.0]
  def change
    create_table :matiere_plats do |t|
      t.belongs_to :matiere , foreign_key: true
      t.belongs_to :plat , foreign_key: true
      t.timestamps
    end
  end
end