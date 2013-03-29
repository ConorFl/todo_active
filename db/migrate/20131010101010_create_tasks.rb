require_relative '../config'

class CreateTasks < ActiveRecord::Migration
  def change
    create_table(:tasks) do |task|
      task.column :description, :string
      task.column :status, :string
      task.timestamps
    end
  end
end
