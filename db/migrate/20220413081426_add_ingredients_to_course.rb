class AddIngredientsToCourse < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :ingredients, :text, array: true, default: []
  end
end
