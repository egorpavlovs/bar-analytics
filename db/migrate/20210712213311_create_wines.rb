class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.float :abv
      t.string :country
      t.string :type
      t.bigint :year

      t.timestamps
    end

    create_join_table :menus, :wines
  end
end
