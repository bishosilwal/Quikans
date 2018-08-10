class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :answer
      t.text :body
      t.references :subject, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
