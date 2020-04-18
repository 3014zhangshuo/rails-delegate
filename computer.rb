# frozen_string_literal: true

require_relative 'memory'
require 'active_support/core_ext/module/delegation'

class Computer
  def initialize
    @memory = Memory.new
  end

  def inspect
    "computer memory usage: #{usage}"
  end

  # delegate return [](method_names)
  # private *delegate(:usage, to: '@memory')
  delegate(:usage, to: '@memory')
  private :usage
end
