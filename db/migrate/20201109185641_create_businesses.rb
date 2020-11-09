class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :location 
      t.string :website_url
      t.string :phone_number
      t.string :img_url

      t.timestamps
    end
  end
end
