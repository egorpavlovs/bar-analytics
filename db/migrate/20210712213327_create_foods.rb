class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :product_composition

      t.timestamps
    end

    create_join_table :menus, :foods
  end
end
