class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :connection_id
      t.integer :user_id
      t.text :body
      t.boolean :read

      t.timestamps
    end
  end
end
