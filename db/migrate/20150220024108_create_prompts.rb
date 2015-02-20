class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.string :question
      t.belongs_to :user, index: true
      t.string :event
      t.string :closing_time

      t.timestamps null: false
    end
    add_foreign_key :prompts, :users
  end
end
