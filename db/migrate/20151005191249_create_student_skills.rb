class CreateStudentSkills < ActiveRecord::Migration
  def change
    create_table :student_skills do |t|
      t.references :student, index: true, foreign_key: true
      t.references :skill, index: true, foreign_key: true
      t.text :experience

      t.timestamps null: false
    end
  end
end
