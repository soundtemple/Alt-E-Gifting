class AddSignOffToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :sign_off, :text
  end
end
