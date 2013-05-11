require_relative '../../config/application'

class CreateListsTable < ActiveRecord::Migration
  def change 
    create_table :lists do |column|
      column.string        :name
      column.boolean       :completed
      
      column.timestamps 
    end   
  end

end
