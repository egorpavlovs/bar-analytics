class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|
      t.float :cost, null: false
      t.string :currency, null: false

      t.timestamps
    end

    create_join_table :prices, :foods
    create_join_table :prices, :beers
    create_join_table :prices, :wines
    create_join_table :prices, :coctails
  end
end
