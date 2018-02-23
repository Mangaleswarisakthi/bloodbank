class CreatePersonals < ActiveRecord::Migration[5.1]
  def change
    create_table :personals do |t|
      t.string :name
      t.date :db
      t.string :gender
      t.string :mobile
      t.string :mid
      t.string :address
      t.string :city

      t.timestamps
    end
  end
end
