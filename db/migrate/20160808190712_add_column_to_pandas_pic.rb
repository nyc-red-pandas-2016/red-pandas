class AddColumnToPandasPic < ActiveRecord::Migration
  def change
        add_column :pandas, :avatar, :string
  end
end
