class CreatePublicCatering < ActiveRecord::Migration[6.0]
  def change
    create_table :public_caterings do |t|
      t.string :name
      t.float :rating
      # TODO: make address in more details
      t.string :address
      t.time :start_working
      t.time :end_working

      t.timestamps
    end

    add_column :workers, :public_catering_id, :bigint
  end
end
