class CreateServiceProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :service_providers do |t|
      t.string :person
      t.string :activity
      t.integer :phone_number_1
      t.string :phone_number_2
      t.text :obs

      t.timestamps
    end
  end
end
