class CreateCoctails < ActiveRecord::Migration[6.0]
  def change
    create_table :coctails do |t|
      t.string :name
      t.string :alcogolic_composition
      t.string :type

      t.timestamps
    end

    create_join_table :menus, :coctails
  end
end
