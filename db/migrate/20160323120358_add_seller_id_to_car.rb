class AddSellerIdToCar < ActiveRecord::Migration
  def change
    add_reference :cars, :seller, index: true, foreign_key: true
  end
end
