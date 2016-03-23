class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.string :year
      t.string :image
      t.string :price

      t.timestamps null: false
    end
  end
end
