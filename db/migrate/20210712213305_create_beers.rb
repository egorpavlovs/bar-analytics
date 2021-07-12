class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.float :abv
      t.float :ibu
      t.string :country
      t.string :type

      t.timestamps
    end

    create_join_table :menus, :beers
  end
end
