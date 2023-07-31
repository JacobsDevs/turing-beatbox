require './lib/node'

class LinkedList
  attr_reader :head
	def initialize(first_component = nil)
	  @head = first_component
	end

	def append(data)
		node = Node.new(data)
		@head = node if @head == nil
	end

	def count
		counter = 0
		return counter if @head == nil
		return 1
	end

	def string
		return @head.data
	end
end