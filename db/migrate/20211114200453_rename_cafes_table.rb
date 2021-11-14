class RenameCafesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :caves do |t|
      t.bigint :public_catering_id, null: false

      t.timestamps
    end

    drop_table :cafes
  end
end
