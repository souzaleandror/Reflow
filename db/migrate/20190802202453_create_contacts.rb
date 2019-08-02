class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message
      t.boolean :accepted
      t.boolean :newsletter
      t.string :slug

      t.timestamps
    end
    add_index :contacts, :slug, unique: true
  end
end
