 class CreateUs < ActiveRecord::Migration[6.1]
   def change
    create_table :us do |t|
       t.string :username
       t.string :password_digest

       t.timestamps
     end
   end
 end
