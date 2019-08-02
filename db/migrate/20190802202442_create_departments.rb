class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :variable_name
      t.text :description
      t.boolean :inactive
      t.string :slug

      t.timestamps
    end
    add_index :departments, :slug, unique: true
  end
end
