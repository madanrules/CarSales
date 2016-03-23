class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.datetime :order_date
      t.references :car, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
