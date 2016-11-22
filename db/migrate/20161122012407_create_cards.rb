class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.references :user, foreign_key: true
      t.text :recipient_email
      t.text :recipient_name
      t.text :title
      t.text :message
      t.text :background_img
      t.text :background_col

      t.timestamps
    end
  end
end
