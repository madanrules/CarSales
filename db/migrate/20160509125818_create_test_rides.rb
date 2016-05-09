class CreateTestRides < ActiveRecord::Migration
  def change
    create_table :test_rides do |t|
      t.text :address
      t.datetime :date
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
