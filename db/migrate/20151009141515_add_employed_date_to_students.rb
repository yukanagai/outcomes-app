class AddEmployedDateToStudents < ActiveRecord::Migration
  def change
    add_column :students, :employed_date, :date
  end
end
