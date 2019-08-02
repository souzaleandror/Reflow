class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name_job
      t.references :department, foreign_key: true
      t.references :company, foreign_key: true
      t.references :type_contraction, foreign_key: true
      t.string :role
      t.text :description
      t.string :mean_activity
      t.string :requirement
      t.string :desirable
      t.string :email_send_cv
      t.string :salary
      t.string :benefits
      t.string :english
      t.string :spanish
      t.integer :quantity_vacancy
      t.date :end_date
      t.boolean :job_filled
      t.string :slug
      t.attachment :img1
      t.boolean :inactive

      t.timestamps
    end
    add_index :jobs, :slug, unique: true
  end
end
