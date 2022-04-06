class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :difficulty
      t.integer :duration
      t.string :category
      t.datetime :starts_at
      t.datetime :ends_at
      t.references :chef, null: false, foreign_key: true

      t.timestamps
    end
  end
end
