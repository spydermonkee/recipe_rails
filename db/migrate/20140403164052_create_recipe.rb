class CreateRecipe < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :instructions
      t.float :star_rating

      t.timestamps
    end

    create_table :tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
