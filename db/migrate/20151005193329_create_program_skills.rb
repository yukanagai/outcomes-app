class CreateProgramSkills < ActiveRecord::Migration
  def change
    create_table :program_skills do |t|
      t.references :program, index: true, foreign_key: true
      t.references :skill, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
