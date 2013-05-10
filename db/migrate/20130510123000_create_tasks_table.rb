require_relative '../../config/application'

class CreateTasksTable < ActiveRecord::Migration
  def change 
    create_table :tasks do |column|
      column.boolean       :completed
      column.text          :todo
      column.timestamp     :completed_at
      
      column.timestamps 
    end   
  end

end
