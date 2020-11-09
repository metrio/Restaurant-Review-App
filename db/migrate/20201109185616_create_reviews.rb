class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text  :description
      t.integer :covid_index
      t.integer :business_id
      t.integer :user_id


      t.timestamps
    end
  end
end
