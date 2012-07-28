class CapturePropertyDetails < ActiveRecord::Migration
  def up
    create_table :properties do |t|
      t.string :unit_number
      t.string :street_number, null: false
      t.string :street_name, null: false
      t.string :suburb, null: false
      t.string :postcode, null: false
      t.string :state, null: false
      t.string :country_iso, default: "AU"
      t.timestamps
    end
  end

  def down
    drop_table :properties
  end
end
