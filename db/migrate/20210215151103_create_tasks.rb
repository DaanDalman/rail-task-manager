class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title, presence :true
      t.text :details, presence :true
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
