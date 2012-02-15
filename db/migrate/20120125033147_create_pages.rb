class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.references :task

      t.timestamps
    end
    add_index :pages, :task_id
  end
end

