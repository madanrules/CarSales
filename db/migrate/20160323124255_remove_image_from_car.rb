class RemoveImageFromCar < ActiveRecord::Migration
  def change
    remove_column :cars, :image, :string
  end
end
