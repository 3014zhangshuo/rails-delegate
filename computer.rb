# frozen_string_literal: true

require_relative 'memory'
require 'active_support/core_ext/module/delegation'

class Computer
  delegate :usage, to: '@memory'

  def initialize
    @memory = Memory.new
  end

  def inspect
    puts "computer memory usage: #{usage}"
  end
end
