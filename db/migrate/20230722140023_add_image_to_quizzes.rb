class AddImageToQuizzes < ActiveRecord::Migration[7.0]
  def change
    add_column :quizzes, :image, :string
  end
end
