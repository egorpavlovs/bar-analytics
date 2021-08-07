class CreateWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :workers do |t|
      t.bigint :user_id
      t.string :role
      t.float :rating, null: false, default: 0
      t.float :salary
      t.datetime :beginning_work, null: false, default: DateTime.now
      t.datetime :end_work

      t.timestamps
    end
  end
end
