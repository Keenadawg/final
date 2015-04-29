class CreateUserholidays < ActiveRecord::Migration
  def change
    create_table :userholidays do |t|
      t.string :username
      t.string :managersName
      t.datetime :start
      t.datetime :end
      t.decimal :duration

      t.timestamps null: false
    end
  end
end
