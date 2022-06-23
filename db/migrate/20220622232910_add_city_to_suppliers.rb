class AddCityToSuppliers < ActiveRecord::Migration[7.0]
  def change
    add_reference :suppliers, :city, null: false, foreign_key: true
  end
end
