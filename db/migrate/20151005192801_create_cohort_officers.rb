class CreateCohortOfficers < ActiveRecord::Migration
  def change
    create_table :cohort_officers do |t|
      t.references :contact, index: true, foreign_key: true
      t.references :cohort, index: true, foreign_key: true
      t.string :role
      t.string :password_digest
      t.string :username

      t.timestamps null: false
    end
  end
end
