class CreateSchoolRequests < ActiveRecord::Migration
  def change
    create_table :school_requests do |t|
      t.references :school, index: true
      t.integer :delegate_requests
      t.integer :delegates_allocated
      t.integer :double_rooms
      t.integer :king_rooms
      t.datetime :accepted_date
      t.boolean :deposit_paid
      t.string :hotel

      t.timestamps
    end
  end
end
