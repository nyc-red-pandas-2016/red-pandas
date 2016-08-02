class CreatePandas < ActiveRecord::Migration
  def change
    create_table :pandas do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
