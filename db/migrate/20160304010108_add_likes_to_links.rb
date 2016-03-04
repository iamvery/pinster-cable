class AddLikesToLinks < ActiveRecord::Migration[5.0]
  def change
    add_column :links, :likes, :integer, null: false, default: 0
  end
end
