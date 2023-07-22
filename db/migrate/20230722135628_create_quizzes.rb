class CreateQuizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.integer :number
      t.string :types
      t.string :weight
      t.string :height
      t.text :hint1
      t.text :hint2
      t.text :hint3
      t.text :description
      t.boolean :is_get, null: false, default: false

      t.timestamps
    end
  end
end
