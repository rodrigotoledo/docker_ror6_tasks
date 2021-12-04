class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.references :author, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.date :completed_at

      t.timestamps
    end
  end
end
