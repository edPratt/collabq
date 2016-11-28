class CreateQuestionAnswerGenre < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.integer :genre_id  
      t.text :body
      t.timestamps
    end
    create_table :answers do |t|
      t.integer :question_id
      t.integer :creator_id
      t.integer :last_editor_id
      t.text :body
      t.timestamps
    end
    create_table :genres do |t|
      t.string :name
      t.timestamps
    end
  end
end
