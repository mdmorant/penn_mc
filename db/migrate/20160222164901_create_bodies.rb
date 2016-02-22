class CreateBodies < ActiveRecord::Migration
  def change
    create_table :bodies do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
