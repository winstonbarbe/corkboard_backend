class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :name
      t.string :image_url
      t.text :bio
      t.string :current_location
      t.boolean :active

      t.timestamps
    end
  end
end
