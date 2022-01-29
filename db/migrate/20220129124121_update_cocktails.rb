class UpdateCocktails < ActiveRecord::Migration[6.0]
  def change
    drop_table :coctails
    drop_table :coctails_menus

    create_table :cocktails do |t|
      t.string :name
      t.string :alcogolic_composition
      t.string :kind

      t.timestamps
    end

    create_join_table :menus, :cocktails
  end
end
