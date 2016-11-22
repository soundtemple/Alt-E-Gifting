class AddTitleIdToCards < ActiveRecord::Migration[5.0]
  def change
    add_reference :cards, :title, foreign_key: true
  end
end
