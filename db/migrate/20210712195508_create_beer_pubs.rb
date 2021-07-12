class CreateBeerPubs < ActiveRecord::Migration[6.0]
  def change
    create_table :beer_pubs do |t|
      t.bigint :public_catering_id, null: false
      t.boolean :has_kicker

      t.timestamps
    end
  end
end
