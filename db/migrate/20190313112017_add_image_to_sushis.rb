class AddImageToSushis < ActiveRecord::Migration
  def change
    add_column :sushis, :image, :string
  end
end
