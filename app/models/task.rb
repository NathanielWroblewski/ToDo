require_relative '../../config/application'
require 'faker'

class Task < ActiveRecord::Base

  attr_accessible :completed
  
  def self.complete_task(id)
    Task.all.each do |task|
      task.update_attributes(:completed => true) if task.id == id
    end 
  end

end

# Task.all.each {|task| puts task.id }  

# test = Task.create(:completed => false, :todo => Faker::Lorem.characters(char_count = 25), :completed_at => nil )

# Task.all.each {|task| puts task.id }  

# Task.all.each_with_index do |task, index|
#   print index.to_s + " " + task.todo.to_s + 
# end


Task.complete_task(2)

p Task.all

