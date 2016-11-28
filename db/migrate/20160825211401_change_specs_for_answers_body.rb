class ChangeSpecsForAnswersBody < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :answers do |t|
        dir.up  { t.change :body, :text }
        dir.down { t.change :body, :text, null: false, default: ""}
      end
    end
  end
end