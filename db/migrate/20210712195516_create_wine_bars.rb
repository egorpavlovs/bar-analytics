class CreateWineBars < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_bars do |t|
      t.bigint :public_catering_id, null: false
      t.boolean :has_sommelier

      t.timestamps
    end
  end
end
