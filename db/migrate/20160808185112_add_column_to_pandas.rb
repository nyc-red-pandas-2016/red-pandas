class AddColumnToPandas < ActiveRecord::Migration
  def change
    add_column :pandas, :home_town, :string
  end
end
