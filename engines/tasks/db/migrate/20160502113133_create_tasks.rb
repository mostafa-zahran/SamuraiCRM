class CreateTasks < ActiveRecord::Migration
  def change
    create_table :samurai_tasks_tasks do |t|
      t.string :title
      t.text :content
      t.references :user, index: true
      t.references :contact, index: true
      t.timestamps null: false
    end
  end
end
