class CreateFollowers < ActiveRecord::Migration[6.1]
  def change
    create_table :followers do |t|
      t.string :from
      t.string :to

      t.timestamps
    end
  end
end
