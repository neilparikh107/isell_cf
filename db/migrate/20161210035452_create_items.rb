class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :picture
      t.string :description
      t.integer :price
      t.date :posted_date
      t.date :expiry_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
