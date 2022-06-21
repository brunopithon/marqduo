class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :company
      t.string :responsible
      t.string :activity
      t.boolean :commission
      t.string :email
      t.integer :phone_number_1
      t.integer :phone_number_2
      t.string :address
      t.string :obs

      t.timestamps
    end
  end
end
