class CreateRwds < ActiveRecord::Migration[5.0]
  def change
    create_table :rwds do |t|
    	t.text :car 

      t.timestamps
    end
  end
end
