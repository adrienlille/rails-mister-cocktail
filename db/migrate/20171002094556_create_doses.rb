class CreateDoses < ActiveRecord::Migration[5.1]
  def change
    create_table :doses do |t|
      t.references :cocktail
      t.references :ingredient
      t.text :description

      t.timestamps
    end
  end
end
