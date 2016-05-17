class CreateReviewGroups < ActiveRecord::Migration
  def change
    create_table :review_groups do |t|
      t.references :user, index: true, foreign_key: true
      t.references :seller, index: true, foreign_key: true
      t.references :review, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
