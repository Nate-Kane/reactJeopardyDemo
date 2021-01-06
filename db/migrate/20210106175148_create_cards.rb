class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :question
      t.string :a1
      t.string :a2
      t.string :a3
      t.string :correct_answer
      t.integer :points
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
