class CreateChefs < ActiveRecord::Migration[6.1]
  def change
    create_table :chefs do |t|
      t.string :restaurants_names
      t.string :genre
      t.string :title
      t.string :subtitle
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
