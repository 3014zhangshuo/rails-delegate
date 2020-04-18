require_relative 'computer'

computer = Computer.new
puts computer.inspect

computer1 = Computer.new
begin
  puts computer1.usage
rescue => e
  puts e.message
end
