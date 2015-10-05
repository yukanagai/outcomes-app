class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :username
      t.string :password
      t.boolean :completed
      t.boolean :employed
      t.boolean :took_survey
      t.string :employer
      t.string :employed_as
      t.references :contact, index: true, foreign_key: true
      t.references :cohort, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
