require_relative 'computer'

computer = Computer.new
puts computer.inspect

computer1 = Computer.new
begin
  puts computer1.usage
rescue => e
  puts e.message
end

# test private method not execute.
class Counter
  def initialize
    @count = 0
  end

  private

  def i
    @count += 1
  end
end

c = Counter.new
begin
  c.i
rescue NoMethodError
  puts c.instance_variable_get('@count')
end
