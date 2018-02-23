class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :bg
      t.string :address
      t.string :mobile
      t.string :mid
      t.string :hname
      t.string :hcity

      t.timestamps
    end
  end
end
