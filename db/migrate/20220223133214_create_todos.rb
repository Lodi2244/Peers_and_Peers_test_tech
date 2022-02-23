class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title, null: false
      t.text :description
      t.datetime :due_date
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
