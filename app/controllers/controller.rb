require '../models/task'

class Controller

  # def initialize
  #   = UI.new
  # end

  def self.start!
    if ARGV[0] == 'list'
      display
    elsif ARGV[0] == 'add'
      Task.create(:completed => false, :todo => ARGV[1..-1].join(' '))
    elsif ARGV[0] == 'complete'
      Task.complete_task(ARGV[1].to_i)
    elsif ARGV[0] == 'delete'
      Task.delete(ARGV[1].to_i)
    end
  end

  def self.display
    Task.all.each_with_index do |task, index|
      print "#{task.id.to_s.ljust(3)}  [#{task.completed ? "X" : " "}] #{task.todo}"
      puts
    end
  end
end

Controller.start!
