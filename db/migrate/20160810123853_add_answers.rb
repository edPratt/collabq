class AddAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.integer :creator_id
      t.integer :last_editor_id
      t.text :body
      t.references :question, foreign_key: true
      t.timestamps
    end
  end
end
