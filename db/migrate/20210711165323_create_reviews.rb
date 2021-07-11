class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.string :text, null: false
      t.float :rating
      t.bigint :guest_id
      t.bigint :worker_id
      t.bigint :public_catering_id, null: false

      t.timestamps
    end
  end
end
