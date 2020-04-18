# frozen_string_literal: true

class Memory
  private
  def usage
    @usage ||= rand(0...100)
  end
end
