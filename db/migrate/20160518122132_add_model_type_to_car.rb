class AddModelTypeToCar < ActiveRecord::Migration
  def change
    add_column :cars, :model_type, :string
  end
end
