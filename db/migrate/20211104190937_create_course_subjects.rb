class CreateCourseSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :course_subjects do |t|
      t.references :subject
      t.references :course

      t.timestamps
    end
  end
end
