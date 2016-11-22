class RemoveTitleFromCards < ActiveRecord::Migration[5.0]
  def change
    remove_column :cards, :title, :string
  end
end
