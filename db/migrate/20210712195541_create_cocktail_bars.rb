class CreateCocktailBars < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktail_bars do |t|
      t.bigint :public_catering_id, null: false

      t.timestamps
    end
  end
end
