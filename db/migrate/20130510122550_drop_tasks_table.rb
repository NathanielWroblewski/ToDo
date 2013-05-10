require_relative '../../config/application'

class DropTasksTable < ActiveRecord::Migration
  def down 
    drop_table :tasks   
  end

end
