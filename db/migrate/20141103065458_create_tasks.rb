class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user, index: true
      t.string :title
      t.boolean :done

      t.timestamps null: false
    end
  end
end
