class CreateStallers < ActiveRecord::Migration
  def change
    create_table :stallers do |t|
      t.string :name
      t.string :place

      t.timestamps null: false
    end
  end
end
