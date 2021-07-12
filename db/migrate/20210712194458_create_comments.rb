class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :text

      t.bigint :review_id
      t.bigint :guest_id
      t.bigint :worker_id

      t.timestamps
    end
  end
end
