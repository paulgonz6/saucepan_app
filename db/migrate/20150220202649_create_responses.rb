class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text :content
      t.integer :prompt_id
      t.integer :responder_id

      t.timestamps null: false
    end
  end
end
