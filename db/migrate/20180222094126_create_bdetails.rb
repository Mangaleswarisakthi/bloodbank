class CreateBdetails < ActiveRecord::Migration[5.1]
  def change
    create_table :bdetails do |t|
      t.integer :bid
      t.string :bg
      t.integer :age
      t.integer :wait
      t.integer :hemo
      t.date :ldate
	

      t.timestamps
    end
  end
end
