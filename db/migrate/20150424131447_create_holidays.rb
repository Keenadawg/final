class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.string :username
      t.string :manager
      t.datetime :startdate
      t.datetime :enddate
      t.decimal :duration

      t.timestamps null: false
    end
  end
end
