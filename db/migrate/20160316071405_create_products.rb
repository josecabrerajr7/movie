class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price
      t.integer :year
      t.string :storyline
      t.string :genres
      t.date :release_date
      t.time :runtime
      t.string :image_url

      t.timestamps null: false
    end
  end
end
