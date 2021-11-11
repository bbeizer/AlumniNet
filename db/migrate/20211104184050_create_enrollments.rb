class CreateEnrollments < ActiveRecord::Migration[6.1]
  def change
    create_table :enrollments do |t|
      t.references :u
      t.references :course

      t.timestamps
    end
  end
end
