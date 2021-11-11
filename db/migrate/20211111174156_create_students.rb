class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :interests
      t.string :school
      t.string :major

      t.timestamps
    end
  end
end
