class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.string :commenter
      t.text :body
      t.belongs_to :poem, foreign_key: true

      t.timestamps
    end
  end
end
