class CreateAlumnis < ActiveRecord::Migration[6.1]
  def change
    create_table :alumnis do |t|
      t.string :name
      t.string :email
      t.string :interests
      t.string :major
      t.string :employment

      t.timestamps
    end
  end
end
