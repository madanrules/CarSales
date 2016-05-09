class AddCarReferenceToTestRide < ActiveRecord::Migration
  def change
    add_reference :test_rides, :car, index: true, foreign_key: true
  end
end
