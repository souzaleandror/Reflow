class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.string :fullname
      t.string :email
      t.string :cellphone
      t.date :date_birth
      t.string :gender
      t.references :job, foreign_key: true
      t.attachment :file
      t.string :linkedin
      t.string :portfolio
      t.text :short_description
      t.boolean :accepted
      t.boolean :available_change_city
      t.boolean :license_car
      t.string :type_license_car
      t.boolean :have_car
      t.string :city
      t.string :state
      t.string :country
      t.string :slug
      t.boolean :good_profile
      t.string :observation

      t.timestamps
    end
    add_index :candidates, :slug, unique: true
  end
end
