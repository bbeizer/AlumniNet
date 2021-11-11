class CreateInstructors < ActiveRecord::Migration[6.1]
  def change
    create_table :instructors, :id => false do |t|
      t.string :first
      t.string :last
      t.string :id

      t.timestamps
    end
  end
end
