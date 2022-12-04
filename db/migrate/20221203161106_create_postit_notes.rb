class CreatePostitNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :postit_notes do |t|
      t.string :note_title
      t.string :postit_content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
