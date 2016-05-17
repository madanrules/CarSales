class RemoveSellerIdFromReview < ActiveRecord::Migration
  def self.up
    remove_column :reviews, :seller_id
  end

  def self.down
    add_column :reviews, :seller_id, :integer
  end

end
