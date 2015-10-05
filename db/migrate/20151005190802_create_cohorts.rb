class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :location
      t.date :start_date
      t.date :end_date
      t.references :program, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
