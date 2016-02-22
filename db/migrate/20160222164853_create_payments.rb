class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :school, index: true
      t.float :amount
      t.text :description
      t.boolean :is_deposit

      t.timestamps
    end
  end
end
